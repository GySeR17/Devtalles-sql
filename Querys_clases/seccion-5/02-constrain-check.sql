SELECT * from country where name = 'Honduras' or name = 'Costa Rica';
SELECT * from country;

alter TABLE country
add check (surfacearea >= 0);

SELECT DISTINCT continent from country;

alter TABLE country add CHECK(
	(continent = 'Asia'::text) or
	(continent = 'South America'::text) or
	(continent = 'Central America'::text) or
	(continent = 'North America'::text) or
	(continent = 'Oceania'::text) or
	(continent = 'Antarctica'::text) or
	(continent = 'Africa'::text) or
	(continent = 'Europe'::text)
);


--alter TABLE country drop CONSTRAINT "country_continent_check1"; --Sirve para borrar el check y volverlo a crear para actualizar los constraints de una tabla.

--Sirve para ver los constraints de una tabla
SELECT
    conname AS constraint_name,
    contype AS constraint_type,
    pg_get_constraintdef(c.oid) AS definition
FROM
    pg_constraint c
JOIN
    pg_class t ON c.conrelid = t.oid
WHERE
    t.relname = 'country';
    
    
    