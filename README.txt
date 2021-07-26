This is my website for searching data about contracts in test workflow.
Here is work with Django framework, REST API and more.



TMPK.sql - is exported PostgreSQL database
Name for import is "TMPK"

User's database name - rem_dev, password - 12345678
Superuser's name in Django - rem, password - 12345678

API requests:
api/contract/get/<number> - request for contract information, "<number>" - contract number
(i. e. api/contract/get/123-ed3-1q - request for searching contract number 123-ed3-1q)
api/balance/get/<existing_date>/<number> - information about contract balance for requested date,
"<existing_date>" - requested date, "<number>" - contract number
(i. e. api/balance/get/02-12-2020/123-ed3-1q - request for displaying balance of contract number
123-ed3-1q for 2 December 2020)
api/rate/get/<number> - information about current rate of contract for now, "<number>" - contract
number (i. e. api/rate/get/123-ed3-1q - request for displaying rate of contract number 123-ed3-1q)



TMPK.sql - это экспортированная база данных PostgreSQL
Импортировать под именем "TMPK"

Имя пользователя базы данных - rem_dev, пароль - 12345678
Имя суперпользователя Django - rem, пароль - 12345678

Запросы к API:
api/contract/get/<number> - информация о контракте, number - номер контракта
api/balance/get/<existing_date>/<number> - информация о балансе контракта на
заданную дату, где existing_date - заданная дата, number - номер контракта
api/rate/get/<number> - информация о текущем тарифе контракта на данный 
момент, где number - номер контракта