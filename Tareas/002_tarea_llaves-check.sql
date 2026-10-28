-- 1. Crear una llave primaria en city (id)
select * from city;
ALTER TABLE city
	add PRIMARY Key (id);

-- 2. Crear un check en population, para que no soporte negativos
select * from city;
alter TABLE city
add CHECK (population >= 0);

-- 3. Crear una llave primaria compuesta en "countrylanguage"
-- los campos a usar como llave compuesta son countrycode y language
select * from countrylanguage;
ALTER TABLE countrylanguage
	add PRIMARY KEY (countrycode, language);

-- 4. Crear check en percentage, 
-- Para que no permita negativos ni números superiores a 100
ALTER TABLE countrylanguage
	add CHECK (percentage BETWEEN 0 and 100);