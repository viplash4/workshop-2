CREATE TABLE years_stat(
stat_year NUMBER(4, 0) NOT NULL PRIMARY KEY CHECK (stat_year > 0)
);

CREATE TABLE Full_city_address(
city_name VARCHAR(20) NOT NULL,
city_state VARCHAR(20) NOT NULL,
CONSTRAINT PK_Full_city_address PRIMARY KEY (city_name, city_state)
);

CREATE TABLE percent_years(
city_name VARCHAR(20) NOT NULL,
city_state VARCHAR(20) NOT NULL,
stat_year NUMBER(4, 0) NOT NULL REFERENCES YEARS_STAT(stat_year),
city_percent NUMBER(3,2) NOT NULL CHECK (city_percent < 100.00),
CONSTRAINT PK_percent_years PRIMARY KEY (city_name, city_state, stat_year),
CONSTRAINT FK_percent_years FOREIGN KEY (city_name, city_state) REFERENCES Full_city_address(city_name,city_state)
);


CREATE TABLE gdp_years(
city_name VARCHAR(20) NOT NULL,
city_state VARCHAR(20) NOT NULL,
stat_year NUMBER(4, 0) NOT NULL REFERENCES years_stat(stat_year) CHECK (stat_year > 0),
gdp NUMBER(20,0) NOT NULL CHECK (gdp >= 0),
CONSTRAINT PK_gdp_years PRIMARY KEY (city_name, city_state, stat_year),
CONSTRAINT FK_gdp_years FOREIGN KEY (city_name, city_state) REFERENCES Full_city_address(city_name,city_state)
);

CREATE TABLE rating_years(
city_name VARCHAR(20) NOT NULL,
city_state VARCHAR(20) NOT NULL,
stat_year NUMBER(4, 0) NOT NULL REFERENCES years_stat(stat_year) CHECK (stat_year > 0),
rating NUMBER(4) NOT NULL CHECK (rating > 0),
CONSTRAINT PK_rating_years PRIMARY KEY (city_name, city_state, stat_year),
CONSTRAINT FK_rating_years FOREIGN KEY (city_name, city_state) REFERENCES Full_city_address(city_name,city_state)
);





