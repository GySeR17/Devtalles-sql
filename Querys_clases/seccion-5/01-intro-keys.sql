--select * FROM country where code = 'NLD' and code2 = 'NA';
--delete FROM country where code = 'NLD' and code2 = 'NA';

SELECT * from country;

ALTER TABLE country
	add PRIMARY Key (code);