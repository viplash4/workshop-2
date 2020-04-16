/*����� 1 - ������� GDP �� 2015 ��. ̳��� - �����
����� 2 -  ������� GDP ��� �� ���� ���. ̳��� - �����
����� 3 - ������� ������ ���� �������� ���� �� ����� ��. г� - �������*/

--query 1
SELECT
    c1.city_name || ', ' || c1.city_state AS city_name
    ,city_gdp
FROM city_info c1 
JOIN full_city_address c2
ON c1.city_name = c2.city_name
WHERE c1.stat_year = 2015;

--query 2
SELECT
    c1.city_name || ', ' || c1.city_state AS city_name
    , SUM(c1.city_gdp) AS sum_gdp
FROM city_info c1
GROUP BY c1.city_name, c1.city_state;

--query 3

SELECT
    c1.city_name || ', ' || c1.city_state AS city_name, c1.stat_year
    , c1.city_rating
FROM city_info c1
WHERE c1.city_name = 'Autauga' AND c1.city_state = 'Alabama'
ORDER BY c1.city_name;
