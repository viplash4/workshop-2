import cx_Oracle
username = 'SYSTEM'
password = '3poli=TEX'
databaseName = 'localhost/xe'
connection = cx_Oracle.connect(username,password, databaseName)
cursor = connection.cursor()
# ---------------test request for connection with db---------------
query = 'SELECT \'Hello from Oracle!\' FROM DUAL'
print(query)
cursor.execute(query)
data = cursor.fetchone()[0]
print(data)

#-----------------------------query 1------------------------------
#Запит 1 - Вивести GDP за 2015 рік. Місто - число
query = '''SELECT
    c1.city_name || ', ' || c1.city_state AS city_name
    ,city_gdp
FROM city_info c1 
JOIN full_city_address c2
    ON c1.city_name = c2.city_name
WHERE c1.stat_year = 2015'''
cursor.execute(query)
for row in cursor:
    print(row)

print('\n')
#----------------------------query 2----------------------------------------
#Запит 2 -  Вивести GDP міст за весь час. Місто - число
query = '''SELECT
    c1.city_name || ', ' || c1.city_state AS city_name
    , SUM(c1.city_gdp) AS sum_gdp
FROM city_info c1
GROUP BY c1.city_name, c1.city_state'''
cursor.execute(query)
for row in cursor:
    print(row)
print('\n')
#-----------------------query 3----------------------------------------
#Запит 3 - Вивести динаміку зміни рейтингу міста за кожен рік. Рік - рейтинг
query = '''SELECT
    c1.city_name || ', ' || c1.city_state AS city_name, c1.stat_year
    , c1.city_rating
FROM city_info c1
WHERE c1.city_name = 'Autauga' AND c1.city_state = 'Alabama'
ORDER BY c1.city_name'''
cursor.execute(query)
for row in cursor:
    print(row)
cursor.close()
connection.close()