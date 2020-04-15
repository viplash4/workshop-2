CREATE TABLE States(
city_state VARCHAR(20) NOT NULL PRIMARY KEY
);
CREATE TABLE Full_city_address(
city_name VARCHAR(20) NOT NULL,
city_state VARCHAR(20) NOT NULL REFERENCES States(city_state),
CONSTRAINT PK_Full_city_address PRIMARY KEY (city_name, city_state)
);

CREATE TABLE city_info(
city_name VARCHAR(20) NOT NULL,
city_state VARCHAR(20) NOT NULL,
stat_year NUMBER(4, 0) NOT NULL CHECK (stat_year > 0),
city_gdp NUMBER(10,0) NOT NULL,
city_rating NUMBER(4,0) NOT NULL,
CONSTRAINT PK_percent_years PRIMARY KEY (city_name, city_state, stat_year),
CONSTRAINT FK_percent_years FOREIGN KEY (city_name, city_state) REFERENCES Full_city_address(city_name,city_state)
);










