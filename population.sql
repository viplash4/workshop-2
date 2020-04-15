-- States population 
INSERT INTO States(city_state) VALUES ('Alabama');
INSERT INTO States(city_state) VALUES ('Alaska');
INSERT INTO States(city_state) VALUES ('Arkansas');
INSERT INTO States(city_state) VALUES ('California');


--full_city_address population
INSERT INTO full_city_address(city_name, city_state) VALUES ('Autauga','Alabama');
INSERT INTO full_city_address(city_name, city_state) VALUES ('Baldwin','Alabama');
INSERT INTO full_city_address(city_name, city_state) VALUES ('Bethel Census Area','Alaska');
INSERT INTO full_city_address(city_name, city_state) VALUES ('Los Angeles','California');

--city_info population
INSERT INTO city_info(city_name,city_state,stat_year,city_gdp,city_rating) VALUES ('Autauga','Alabama',2015,102031,40);
INSERT INTO city_info(city_name,city_state,stat_year,city_gdp,city_rating) VALUES ('Baldwin','Alabama',2015,10232134,50);
INSERT INTO city_info(city_name,city_state,stat_year,city_gdp,city_rating) VALUES ('Bethel Census Area','Alaska',2016,1021,3);
INSERT INTO city_info(city_name,city_state,stat_year,city_gdp,city_rating) VALUES ('Los Angeles', 'California',2015,23041,42);
