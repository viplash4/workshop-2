--years_stat population
INSERT INTO  YEARS_STAT(stat_year) VALUES (2015);
INSERT INTO  YEARS_STAT(stat_year) VALUES (2016);
INSERT INTO  YEARS_STAT(stat_year) VALUES (2017);
INSERT INTO  YEARS_STAT(stat_year) VALUES (2018);

--full_city_address population
INSERT INTO full_city_address(city_name, city_state) VALUES ('Autauga','Alabama');
INSERT INTO full_city_address(city_name, city_state) VALUES ('Baldwin','Alabama');
INSERT INTO full_city_address(city_name, city_state) VALUES ('Bibb','Alabama');
INSERT INTO full_city_address(city_name, city_state) VALUES ('Bristol Bay Borough','Alaska');

--percent_years population
INSERT INTO percent_years(city_name,city_state,stat_year,city_percent) VALUES('Autauga','Alabama',2015,0.5);
INSERT INTO percent_years(city_name,city_state,stat_year,city_percent) VALUES('Baldwin','Alabama',2016,-3.2);
INSERT INTO percent_years(city_name,city_state,stat_year,city_percent) VALUES('Bibb','Alabama',2015,1.5);
INSERT INTO percent_years(city_name,city_state,stat_year,city_percent) VALUES('Bristol Bay Borough','Alaska',2015,0.1);

--gdp_years population
INSERT INTO gdp_years(city_name,city_state,stat_year,gdp) VALUES('Autauga','Alabama',2015,1582473);
INSERT INTO gdp_years(city_name,city_state,stat_year,gdp) VALUES('Baldwin','Alabama',2016,302032);
INSERT INTO gdp_years(city_name,city_state,stat_year,gdp) VALUES('Bibb','Alabama',2015,303);
INSERT INTO gdp_years(city_name,city_state,stat_year,gdp) VALUES('Bristol Bay Borough','Alaska',2015,321200);

--rating_years population
INSERT INTO rating_years(city_name,city_state,stat_year,rating) VALUES('Autauga','Alabama',2015,70);
INSERT INTO rating_years(city_name,city_state,stat_year,rating) VALUES('Baldwin','Alabama',2016,2);
INSERT INTO rating_years(city_name,city_state,stat_year,rating) VALUES('Bibb','Alabama',2015,5);
INSERT INTO rating_years(city_name,city_state,stat_year,rating) VALUES('Bristol Bay Borough','Alaska',2015,10);
