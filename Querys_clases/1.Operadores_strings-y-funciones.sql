SELECT
	id,
	UPPER(name) as upper_name,  --devuelve en una columna el upper de los nombres
	length(name),   --devuelve en integer el numero de caracteres
	((length(name)) * 2) as "constante*2",  
	concat( '*', id, '-', name, '*' ),
	'*'|| id|| '-'|| name|| '*' as barcode, --concatena los caracteres especiales con los valores de tabla designados
	name
	
FROM
	users;
