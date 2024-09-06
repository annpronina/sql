-- 1. uzdevums - atlasit visus klientus(customers), kuri dzimushi 
-- no 1990. gada UN kuriem ir vairak kaa 1000 punktu
SELECT * FROM customers
WHERE (birth_date >= '1990-01-01' AND points > '1000');

-- 2. uzdevums -  atlasit visus klientus(customers), kuri dzimushi 
-- no 1990. gada VAI kuriem ir vairak kaa 1000 punktu
SELECT * FROM customers
WHERE (birth_date >= '1990-01-01' OR points > '1000');

-- 3. uzdevums -  atlasit visus klientus(customers), kuri dzimushi 
-- no 1990. gada VAI kuriem ir vairak kaa 1000 punktu
-- un dzivo VA vai CO shtataa 
SELECT * FROM customers
-- WHERE (birth_date >= '1990-01-01' OR points > '1000') AND state IN ('VA', 'CO');

WHERE birth_date > '1990-01-01' or points > 1000 and state in ('VA', 'CO');


  