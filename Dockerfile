FROM python:3

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN pip install scikit-learn psycopg2 numpy aiogram 
# RUN pip3 install pymorphy2 pymorphy2-dicts-uk

COPY . .

CMD [ "python3", "main.py" ]
