

-- 1. Crear una llave primaria en city (id)
ALTER TABLE city
	add PRIMARY Key (id);

-- 2. Crear un check en population, para que no soporte negativos
alter TABLE city
add CHECK (population >= 0);
select * from city;

-- 3. Crear una llave primaria compuesta en "countrylanguage"
-- los campos a usar como llave compuesta son countrycode y language

ALTER TABLE countrylanguage
	add PRIMARY KEY (countrycode, language);
select * from countrylanguage;

-- 4. Crear check en percentage, 
-- Para que no permita negativos ni números superiores a 100
ALTER TABLE countrylanguage
	add CHECK ( (percentage >= 0) and (percentage >= 100) );
select * from countrylanguage;

