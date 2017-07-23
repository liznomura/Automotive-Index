\timing
DROP DATABASE indexed_cars;

DROP USER indexed_cars_user;

CREATE USER indexed_cars_user;

CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;

DROP TABLE IF EXISTS car_models;

\i scripts/car_models.sql;

\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;
\i scripts/car_model_data.sql;



SELECT DISTINCT make_title
FROM car_models
WHERE make_code = 'LAM';
--time: 28.121ms

SELECT DISTINCT model_title
FROM car_models
WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
--time: 26.741ms

SELECT make_code, model_code, model_title, year
FROM car_models
WHERE make_code = 'LAM';
--time: 30.833ms

SELECT *
FROM car_models
WHERE year >= 2010 AND year <= 2015;
--time: 91.612ms

SELECT *
FROM car_models
WHERE year = 2010;
--time: 46.613ms