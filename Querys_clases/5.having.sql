SELECT
	count(*) as total,
	country
FROM
	users
group by
	country
HAVING
	count(*) between 3 and 7 
order by
	count(*) desc;
