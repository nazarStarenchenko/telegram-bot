CREATE TABLE IF NOT EXISTS chats_answer (
  id SERIAL,
  answer VARCHAR,
  CONSTRAINT chats_answers_pkey PRIMARY KEY(id)
); 


CREATE TABLE IF NOT EXISTS chats_question (
  id SERIAL,
  question VARCHAR,
  answer_id INTEGER,
  CONSTRAINT chats_questions_pkey PRIMARY KEY(id)
) ;

-- -- ADD DATA
INSERT INTO chats_answer values (DEFAULT, 'Корпус 14 знаходиться за адресою вулиця Політехнічна, 14-А ');
INSERT INTO chats_answer values (DEFAULT, 'Корпус 14 закріплений за ФПМ ');
INSERT INTO chats_answer values (DEFAULT, 'Гуртожиток 14 закріплений за ФПМ, ІПСА, ІХФ');
INSERT INTO chats_answer values (DEFAULT, 'Гуртожиток 14 знаходиться за адресою Ковальський провулок 5');
INSERT INTO chats_answer values (DEFAULT, 'Для вступу на ФПМ необхідно здавати такі предмети: математика, українська мова та англійська');
INSERT INTO chats_answer values (DEFAULT, 'Подивитись свій рейтинг серед всіх вступників можна на сайті: https://vstup.osvita.ua/');
INSERT INTO chats_answer values (DEFAULT, 'На спеціальності прикладна математика існує лише 1 освітня програма - “Наука про дані (Data Science) та математичне моделювання”');
INSERT INTO chats_answer values (DEFAULT, 'Більш детально ознайомитись з освітньою програмою можна на сайті за наступним посиланням: http://fpm.kpi.ua/faculty/entry/1course.do ');
INSERT INTO chats_answer values (DEFAULT, 'Зміст діяльності фахівців зі спеціальності ПРИКЛАДНА МАТЕМАТИКА полягає у математичному моделюванні та комп’ютерній імітації складних технічних/економічних/ біологічних систем, процесів та явищ, розробленні нових чи адаптації існуючих математичних методів і алгоритмів обробки даних різної природи, створенні математичного та програмного забезпечення систем обробки інформації, розробленні систем штучного інтелекту, Data Mining та Soft Computing ');
INSERT INTO chats_answer values (DEFAULT, 'На ФПМ навчання за заочною формою провадиться на договірній (контрактній) основі.');
INSERT INTO chats_answer values (DEFAULT, 'Студенти-заочники допускаються до участі в сесії, якщо вони не мають академічної заборгованості за попередній семестр, а також заборгованості по оплаті договору (контракту) за навчання.');
INSERT INTO chats_answer values (DEFAULT, 'Офіційний сайт ФПМ: http://fpm.kpi.ua/main.do ');
INSERT INTO chats_answer values (DEFAULT, 'Інформацію щодо розкладу занять та сесії ви можете отримати на офіційному сайті розкладу КПІ: http://roz.kpi.ua/');
INSERT INTO chats_answer values (DEFAULT, 'Бібліотека КПІ працює Пн.-Пт: 08:30-20:00, Сб. – Нд: вихідний, за адресою пр. Перемоги, 37 Л, м. Київ, 03056');
INSERT INTO chats_answer values (DEFAULT, 'КПІ передбачає військову кафедру і туди можна вступити, але навчання там платне. Більш детальну інформацію можна отримати на сайті:http://kvp.kpi.ua/');
INSERT INTO chats_answer values (DEFAULT, 'Інформацію щодо нарахування стипендій ви можете відслідковувати у телеграм каналі https://t.me/kpischolarship');
INSERT INTO chats_answer values (DEFAULT, 'Соціальні стипендії призначаються студентам-пільговикам на основі законів, що встановлюють державні пільги і гарантії для призначення соціальних стипендій окремим категоріям студентів. Право на отримання  соціальної стипендії мають студенти, які навчаються за денною формою за державним замовленням та які не перебувають в академічній відпустці. Аби дізнатися більше про стипендії, звертайтеся на офіційний телеграм-канал відділу стипендіального забезпечення КПІ ім. Ігоря Сікорського:https://t.me/kpischolarship');
INSERT INTO chats_answer values (DEFAULT, 'Індивідуальний графік навчання – це фактично дистанційне навчання в асинхронному режимі за наданими викладачами матеріалами, але його дедлайн не 30.06, а 31.08. Для отримання треба написати заяву форму та зразок оформлення якої можна отримати тут:https://dnvr.kpi.ua/application-form/. Та відправили на адреси деканату - перелік адрес тут https://telegra.ph/Addresses-of-units-for-sending-applications-during-martial-law-04-03');
INSERT INTO chats_answer values (DEFAULT, 'Всі організаційні питання можна задати безпосередньо у телеграм канал деканату вашого факультету, який можна знайти на даному сайті:https://webometr.kpi.ua/telega');
INSERT INTO chats_answer values (DEFAULT, 'КПІ передбачає перенесення вивчення дисциплін в наступні семестри. Для цього необхідно написати заяву (форма заяви та зразок заповнення зверху сторінки https://dnvr.kpi.ua/application-form/) та надіслати до деканату перелік адрес тут (https://telegra.ph/Addresses-of-units-for-sending-applications-during-martial-law-04-03). Заяву має погодити кафедра, де ви навчаєтесь, оскільки кафедра може підказати, які дисципліни не варто переносити, щоб не порушити логіку освоєння навчального матеріалу та мати належний базис знань.');
INSERT INTO chats_answer values (DEFAULT, 'На теринорії університету існує багато закладів харчування. Зокрема,їдальні та буфети. В центрі КПІ, біля 15 корпусу є гарний заклад Хеппі Кейк, де готують дуже смачну та різну їжу. Скористайтесь гугл-мапою кампуса з відміченими їдальнями, що наразі функціонують https://www.google.com/maps/d/viewer?mid=1JMI4bv7bhb2a2_vLsCazHDuS004NiHlg&ll=50.44878035715398%2C30.45336713605602&z=15');
INSERT INTO chats_answer values (DEFAULT, 'Алгоритм такий самий, як і під час звичайного навчання. Викладач комунікує зі своїми студентами онлайн, інформує про розміщення лекційного матеріалу, дає завдання, визначає дедлайни, оцінює роботу студентів.У КПІ діє система «Електронний кампус». Це єдина загальноуніверситетська система, що функціонує як сховище навчально-методичних матеріалів. Там є електронні кабінети, в яких студенти отримують доступ до відповідних матеріалів та можуть комунікувати з викладачем. До того ж ані викладачі, ані студенти не обмежені у використанні будь-яких інших платформ. Зокрема, викладачам, які раніше пройшли відповідне підвищення кваліфікації, також рекомендовано використовувати платформу Moodle для організації дистанційного навчання. Студенти й викладачі можуть проводити скайп-конференції, виконувати завдання і просто пересилати файл викладачу на електронну пошту, спілкуватися у чатах тощо.');
INSERT INTO chats_answer values (DEFAULT, 'Згуровський Михайло Захарович - Ректор КПІ ім. Ігоря Сікорського, Академік Національної академії наук України, доктор технічних наук, Заслужений діяч науки і техніки України, Лауреат Державної премії України в галузі науки і техніки, Лауреат премії В.М.Глушкова НАН України, професор');
INSERT INTO chats_answer values (DEFAULT, 'З графіком навчально-освітньго процесу можна ознайомитись на сайті https://kpi.ua/ru/year');
INSERT INTO chats_answer values (DEFAULT, 'Кафедра військової підготовки КПІ ім. Ігоря Сікорського знаходиться за адресою м. Київ, вул. Верхньоключова, 4');
INSERT INTO chats_answer values (DEFAULT, 'Найближчі станції метро, що межують з університетом це - "Політехнічний інститут", "Шулявська"');
INSERT INTO chats_answer values (DEFAULT, 'Це безпосередньо залежить від вашого навчального плану та факультету, але зазвичай, пари по вихідним дням не проводяться');
INSERT INTO chats_answer values (DEFAULT, 'Так, КПІ має великий басейн, де проводяться заняття з плавання, аквааеробіки, дайвінгу, водного поло, каякінгу.');
INSERT INTO chats_answer values (DEFAULT, 'В КПІ працюють гуртки та спортивні секцій, такі як: атлетична гімнастика,аеробіка,баскетбол,бокс,боротьба: вільна, греко-римська, дзюдо, таеквандо,волейбол,кульова стрільба,настільний теніс,плавання, спортивна гімнастика,туризм,теніс,шйпінг');
INSERT INTO chats_answer values (DEFAULT, 'Відповідно до "Правил внутрішнього розпорядку" КПІ перерва між парами складає 20 хвилин, а перерва між академічними годинами пари – 5 хвилин');
INSERT INTO chats_answer values (DEFAULT, 'Для відвідування басейну необхідно мати довідку від терапевта з дозволом на відвідування (здоровий, басейн відвідувати може). Також, необхідно мати з собою купальний костюм, шапочку для плавання, змінне взуття, мило, мочалку та рушник. Документи для відвідування оформлюються у бухгалтерії 24 корпусу (1 поверх)');

INSERT INTO chats_question values (DEFAULT, 'Де знаходиться корпус 14 ', 1);
INSERT INTO chats_question values (DEFAULT, 'Який корупс знаходиться за адресою Політехнічна, 14-А ', 1);
INSERT INTO chats_question values (DEFAULT, 'Який корпус закріплений за ФПМ ', 2);
INSERT INTO chats_question values (DEFAULT, 'В якому корпусі я буду навчатись на ФПМ ', 2);
INSERT INTO chats_question values (DEFAULT, 'Який гуртожиток у ФПМ ', 3);
INSERT INTO chats_question values (DEFAULT, 'Який гуртожиток закріплений за ФПМ ', 3);
INSERT INTO chats_question values (DEFAULT, 'Де знаходиться гуртожиток 14 ', 4);
INSERT INTO chats_question values (DEFAULT, 'Які предмети треба здавати для вступу ', 5);
INSERT INTO chats_question values (DEFAULT, 'Який у мене рейтинг серед вступників ', 6);
INSERT INTO chats_question values (DEFAULT, 'Які існують освітні програми на прикладній математиці ', 7);
INSERT INTO chats_question values (DEFAULT, 'Скільки освітніх програм на прикладній математиці ', 7);
INSERT INTO chats_question values (DEFAULT, 'Де можна ознаймитись з освітньою програмою ', 8);
INSERT INTO chats_question values (DEFAULT, 'Який зміст діяльності фахівців прикладна математика ', 9);
INSERT INTO chats_question values (DEFAULT, 'Чи буду я вчити математичне моделювання на прикладній математиці ', 9);
INSERT INTO chats_question values (DEFAULT, 'Чи існує заочна форма навчання на ФПМ ', 10);
INSERT INTO chats_question values (DEFAULT, 'Яке навчання на ФПМ на заочній формі ', 10);
INSERT INTO chats_question values (DEFAULT, 'На якій основі проводиться заочна форма навчання на ФПМ ', 10);
INSERT INTO chats_question values (DEFAULT, 'Як заочники допускаються до сесії ', 11);
INSERT INTO chats_question values (DEFAULT, 'Офіційний сайт ', 12);
INSERT INTO chats_question values (DEFAULT, 'Який офіційний сайт ', 12);
INSERT INTO chats_question values (DEFAULT, 'Де можна подивитися розклад занять ', 13);
INSERT INTO chats_question values (DEFAULT, 'Де можна подивитися розклад сесії ', 13);
INSERT INTO chats_question values (DEFAULT, 'Як мені визначити, які дисципліни виносяться на екзаменаційну сессію ', 13);
INSERT INTO chats_question values (DEFAULT, 'Які часи роботи бібліотеки КПІ', 14);
INSERT INTO chats_question values (DEFAULT, 'Яка адреса бібліотеки КПі', 14);
INSERT INTO chats_question values (DEFAULT, 'Чи є в КПІ ім. Ігоря Сікорського військова кафедра і чи можна туди вступити?', 15);
INSERT INTO chats_question values (DEFAULT, 'Чи платне навчання на військовій кафедрі КПІ?', 15);
INSERT INTO chats_question values (DEFAULT, 'Де можна отримати інформацію про стипендії', 16);
INSERT INTO chats_question values (DEFAULT, 'Коли акаденічна стипендія', 16);
INSERT INTO chats_question values (DEFAULT, 'Коли в цьому місяці очікувати стипендію', 16);
INSERT INTO chats_question values (DEFAULT, 'Кому передбачена соціальна стипендія', 17);
INSERT INTO chats_question values (DEFAULT, 'Як отримати соціальну стипендію', 17);
INSERT INTO chats_question values (DEFAULT, 'Що таке індивідуальний графік навчання, як його отримати', 18);
INSERT INTO chats_question values (DEFAULT, 'Яка форма заяви для отримання індивідуального графіку навчання', 18);
INSERT INTO chats_question values (DEFAULT, 'Які документи потрібно заповнити для отримання індивідуального графіку навчання', 18);
INSERT INTO chats_question values (DEFAULT, 'Як мені отримати довідку від деканату, про те що я навчаюся в універитеті', 19);
INSERT INTO chats_question values (DEFAULT, 'Які контакти деканату', 19);
INSERT INTO chats_question values (DEFAULT, 'Як можна зв"язатися з деканатом мого факультету', 19);
INSERT INTO chats_question values (DEFAULT, 'Як реалізувати перенесення вивчення дисциплін в наступні семестри', 20);
INSERT INTO chats_question values (DEFAULT, 'Чи можна перенести всі дисципліни на наступний семестр', 20);
INSERT INTO chats_question values (DEFAULT, 'Де смачно поїсти на території КПІ', 21);
INSERT INTO chats_question values (DEFAULT, 'Чи передбачені в КПІ заклади харчування', 21);
INSERT INTO chats_question values (DEFAULT, 'Чи є загальний алгоритм для дистанційного проведення пар', 22);
INSERT INTO chats_question values (DEFAULT, 'Як відбувається дистансійне проведення пар', 22);
INSERT INTO chats_question values (DEFAULT, 'Як звати ректора КПІ', 23);
INSERT INTO chats_question values (DEFAULT, 'Яке ФІО ректора КПІ', 23);
INSERT INTO chats_question values (DEFAULT, 'Де подивитися графік учбового процесу', 24);
INSERT INTO chats_question values (DEFAULT, 'Де знайти графік навчального процесу', 24);
INSERT INTO chats_question values (DEFAULT, 'За якою адресою знаходитться війскова кафедра', 25);
INSERT INTO chats_question values (DEFAULT, 'Яка адреса війскової кафедри', 25);
INSERT INTO chats_question values (DEFAULT, 'Яке найближче метро до КПІ', 26);
INSERT INTO chats_question values (DEFAULT, 'Чи відбуватимуться пари по вихідних', 27); 
INSERT INTO chats_question values (DEFAULT, 'Чи потрібно відвідувати пари по суботах', 27);
INSERT INTO chats_question values (DEFAULT, 'Чи є бассейн в кпі', 28);
INSERT INTO chats_question values (DEFAULT, 'Які є творчі та фізичні активості в КПІ', 29 );
INSERT INTO chats_question values (DEFAULT, 'Чим займатися у вільний час', 29);
INSERT INTO chats_question values (DEFAULT, 'Чи можу я записатися на якісь додаткові активності', 29);
INSERT INTO chats_question values (DEFAULT, 'Як довго триває перерва між парами', 30);
INSERT INTO chats_question values (DEFAULT, 'Що потрібно мати з собою, щоб відвідувати бассейн', 31);
INSERT INTO chats_question values (DEFAULT, 'Які вимоги до відвідування басейну', 31);
