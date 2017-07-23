\timing
\timing

DROP DATABASE indexed_cars;

DROP USER indexed_cars_user;

CREATE USER indexed_cars_user;

CREATE DATABASE indexed_cars WITH OWNER indexed_cars_user;


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

-- DROP INDEX IF EXISTS models;
-- DROP INDEX IF EXISTS make_code_models;
-- DROP INDEX IF EXISTS years;

-- CREATE INDEX models
-- ON car_models(make_code);

-- CREATE INDEX make_code_models
-- ON car_models(make_code, make_model);

-- CREATE INDEX years
-- ON car_models(year);


-- SELECT DISTINCT make_title
-- FROM car_models
-- WHERE make_code = 'LAM';
-- --time: 28.121ms
-- --new time: 0.958ms

-- SELECT DISTINCT model_title
-- FROM car_models
-- WHERE make_code = 'NISSAN' AND model_code = 'GT-R';
-- --time: 26.741ms
-- --new time: 1.458ms

-- SELECT make_code, model_code, model_title, year
-- FROM car_models
-- WHERE make_code = 'LAM';
-- --time: 30.833ms
-- --new time: 1.589ms

-- SELECT *
-- FROM car_models
-- WHERE year >= 2010 AND year <= 2015;
-- --time: 91.612ms
-- --new time: 72.807ms

-- SELECT *
-- FROM car_models
-- WHERE year = 2010;
-- --time: 46.613ms
-- --new time: 17.087ms