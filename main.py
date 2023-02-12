import re
import random
import logging
from os import environ

# import pymorphy2

import psycopg2
import sklearn
import numpy as np

from sklearn.model_selection import GridSearchCV

from sklearn.feature_extraction.text import TfidfVectorizer
from sklearn.naive_bayes import MultinomialNB
from sklearn.pipeline import make_pipeline

from sklearn.base import BaseEstimator

from aiogram import Bot, Dispatcher, executor, types

# import inspect

# if not hasattr(inspect, 'getargspec'):
#     inspect.getargspec = inspect.getfullargspec

logging.basicConfig(level=logging.INFO, filename="log.log", filemode="a", format="%(asctime)s - %(levelname)s - %(message)s")

def connect_to_db():
	"""
	this function creates a connection to the database
	"""
	# username = environ.get(POSTGRES_USER)
	# password = environ.get(POSTGRES_PASSWORD)
	# database = environ.get(POSTGRES_DB)
	# host = environ.get(POSTGRES_HOST)

	username = 'postgres'
	password = 'postgres'
	database = 'postgres'
	host = "db"
	port = '5432'

	con = psycopg2.connect(user=username, password=password, dbname=database, host=host, port=port)
	logging.info("created database connection")
	print("created database connection")
	return con


def get_data_from_db(connection, table_name, sql_statement):
	"""
	this function fetches data from DB
	in our case questions and answers
	"""
	cur = connection.cursor()
	if table_exists(connection, table_name):
		cur.execute(sql_statement)
		connection.commit()
		table = cur.fetchall()
		logging.info(f"got data from {table_name}")
		print(f"got data from {table_name}")
		return table
	else: 
		print(f"could not get data from {table_name}")
		return []


def post_data_to_db(connection, sql_statement):
	cur = connection.cursor()
	cur.execute(sql_statement)
	connection.commit()


def table_exists(con, table_name):
    """
    this function checks if the table we want to access exists
    """
    exists = False
    try:
        cur = con.cursor()
        cur.execute("select exists(select relname from pg_class where relname='" + table_name + "')")
        exists = cur.fetchone()[0]
        cur.close()
    except psycopg2.Error as e:
        print(e)
    return exists


def unknown():
	"""
	this function returns one of given answers
	should be used if we have no answer to a question
	"""
	response = ["питання мені не зрозуміле, напишіть більш розбірливо",
	            "Ваше питання не коректне або його не має в нашій базі"][
	    random.randrange(2)]
	return response


def answers_preprocessing(answers_table):
	'''
	this function takes data from aswers table as parameter 
	and returs dictionary with data from table
	'''
	answer_dict = dict()

	for row in answers_table:
		answer_dict[row[0]] = row[1]

	return answer_dict


def questions_preprocessing(questions_table):
	'''
	this function takes data from questions table as parameter 
	and returs tuple with list of proccesed questions and answers ids
	'''
	answer_id = []
	questions_list = []
	stop_words = []
	with open("stop_words.txt", "r") as f:
		stop_words.append(f.readline()[0:-2])

	print(stop_words)

	questions_amount = 0
	for row in questions_table:
		if row[0] > "":
			if row[1] > 0:
				phrases = row[0]
				words = phrases.split(' ')
				phrase = ""
				for word in words:
					if word not in stop_words:
						phrase = phrase + word + " "
						if (len(phrase) > 0):
							questions_list.append(phrase.strip())
							answer_id.append(row[1])
							questions_amount = questions_amount + 1

	return (questions_list, answer_id)


def create_model(connection):
	'''
	this function gets preproccesed questions and answers ids from db
	and returns a model which we can feed out questions into
	'''
	questions_table = get_data_from_db(connection, "chats_question", "SELECT question, answer_id FROM chats_question;")
	questions_list, answer_id = questions_preprocessing(questions_table)

	logging.info("model learning started")
	print("model learning started")
	vectorizer_q = TfidfVectorizer()
	matrix_big_q = vectorizer_q.fit_transform(questions_list)

	model = MultinomialNB(alpha=0.0001).fit(matrix_big_q, answer_id)
	logging.info("model learning finished")
	print("model learning finished")

	return (model, vectorizer_q)


def get_response(question, connection, model, vectorizer_q):
	"""
	this function returns response to given question using a model
	"""
	answers_table = get_data_from_db(connection, "chats_answer", "SELECT id, answer FROM chats_answer;")
	answer_dict = answers_preprocessing(answers_table)

	# morph = pymorphy2.MorphAnalyzer(lang='uk')

	words = re.split('\W', question)
	phrase = ""
	for word in words:
		# word = morph.parse(word)[0].normal_form
		phrase = phrase + word + " "
	

	logging.info(f"got text message from the user: {phrase}")
	phrase = vectorizer_q.transform([phrase])

	if model.predict_proba(phrase).max() > 0.15:
		reply_id = int(model.predict(phrase))
		logging.info(f"sent text message to the user: {answer_dict[reply_id]}")
		print(f"sent text message to the user: {answer_dict[reply_id]}")
		return answer_dict[reply_id]
	else:
		response = unknown()
		logging.info(f"question was unclear, sent that response: {response}")
		print(f"question was unclear, sent that response: {response}")
		return response


def main(api_key):
	connection = connect_to_db()

	with open("db/db.sql", "r") as f:
		lines = f.readlines()
		sql_statement = "".join(lines)
		post_data_to_db(connection, sql_statement)

	model, vectorizer_q = create_model(connection)

	bot = Bot(token=api_key)
	dp = Dispatcher(bot=bot)

	logging.info("bot is running...")
	print("bot is running...")

	@dp.message_handler(commands=['start'])
	async def start_handler(message):
		'''
		this function greets user when he uses start command
		'''
		await message.reply(f"Привіт {message.from_user.full_name}! Я можу відповідати на твої питання стосовно навчання на ФПМ", reply=False)


	@dp.message_handler()
	async def handle_message(message):
		'''
		this function takes user question and gives out a response
		'''
		text = str(message.text)
		response = get_response(text, connection, model, vectorizer_q)
		await message.reply(response, reply=False)

	executor.start_polling(dp)


if __name__ == "__main__":
	API_KEY = "5837832668:AAHuMPjgHNVLvq_lPP6L5lSF1-DcoHgpNdU"
	main(API_KEY)

