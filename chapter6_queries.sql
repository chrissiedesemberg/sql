### PAGE 245
UPDATE movie_table
SET category =
CASE
WHEN drama = 'T' THEN 'drama'
WHEN comedy = 'T' THEN 'comedy'
WHEN action = 'T' THEN 'action'
WHEN gore = 'T' THEN 'horror'
WHEN scifi = 'T' THEN 'scifi'
WHEN for_kids = 'T' THEN 'family'
WHEN cartoon = 'T' AND rating = 'G' THEN 'family' 
ELSE 'misc'
END;

### PAGE 247 

UPDATE movie_table
SET category =
CASE
WHEN drama = 'T' AND rating = 'R' THEN 'drama-r'
WHEN comedy = 'T' AND rating = 'R' THEN 'comedy-r'
WHEN action = 'T'  AND rating = 'R' THEN 'action-r'
WHEN gore = 'T' AND rating = 'R' THEN  'horror-r'
WHEN scifi = 'T' AND rating = 'R' THEN  'scifi'
WHEN category = 'misc' AND rating = 'G' THEN 'family' 
END;

UPDATE movie_table
SET category =
CASE
WHEN category = 'drama-r' = 'T' AND rating = 'R' THEN 'drama'
WHEN category = 'comedy-r' = 'T' AND rating = 'R' THEN 'comedy'
WHEN category = 'action-r' = 'T'  AND rating = 'R' THEN 'action'
WHEN category = 'gore-r' = 'T' AND rating = 'R' THEN  'horror'
WHEN category = 'scifi-r' = 'T' AND rating = 'R' THEN  'scifi'
END;

ALTER TABLE movie_table
DROP COLUMN drama,
DROP COLUMN comedy,
DROP COLUMN action,
DROP COLUMN scifi,
DROP COLUMN for_kids,
DROP COLUMN gore,
DROP COLUMN cartoon;

### PAGE 253

SELECT title, category
FROM movie_table
ORDER BY title;

### PAGE 257

SELECT * FROM movie_table
ORDER BY category, purchased, title;

### PAGE 265 - 

SELECT first_name, sales FROM cookie_sales
ORDER BY first_name;

SELECT first_name, SUM(sales) FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales)DESC;

SELECT first_name,
COUNT(sale_date) FROM cookie_sales
WHERE sales > 0
GROUP BY first_name;

### PAGE 269

SELECT COUNT(sale_date)
FROM cookie_sales;						#28 days, No it doesnt

SELECT first_name,
COUNT(sale_date)
FROM cookie_sales
WHERE sales > 0
GROUP BY first_name; 

SELECT DISTINCT sale_date
FROM cookie_sales
ORDER BY sale_date;

### PAGE 275

SELECT first_name, SUM(sales)
FROM cookie_sales
GROUP BY first_name
ORDER BY SUM(sales)DESC
LIMIT 1,1;






