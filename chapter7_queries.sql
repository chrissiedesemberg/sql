### PAGE 283

SELECT * FROM my_contacts
WHERE gender = 'F'
AND status = 'single'
AND state='TX'
AND seeking LIKE '%single M%'
AND birthday > '1970-08-28'
AND birthday < '1980-08-28'
AND interests LIKE '%animal%'
AND interests LIKE '%horse%'
AND interests LIKE '%movie%';

### PAGE 286

SELECT * FROM my_contacts
WHERE gender = 'M'
AND status = 'single'
AND state ='CA'
AND seeking LIKE '%single F%'
AND birthday > '1950-01-01'
AND birthday < '1960-12-31';

### PAGE 287
#SUBSTRING_INDEX(interests, ',', 1);

#### PAGE 290

ALTER TABLE my_contacts
ADD COLUMN interest1 VARCHAR(50),
ADD COLUMN interest2 VARCHAR(50),
ADD COLUMN interest3 VARCHAR(50),
ADD COLUMN interest4 VARCHAR(50);

UPDATE my_contacts
SET interest1 = SUBSTRING_INDEX(interests, ',', 1);

UPDATE my_contacts
SET interests = TRIM(RIGHT(interests, (LENGTH(interests) - LENGTH(interest1) -1)));

UPDATE my_contacts SET interest2 = SUBSTRING_INDEX(interests, ',', 1);
UPDATE my_contacts SET interests = TRIM(RIGHT(interests, (LENGTH(interests)-
LENGTH(interest2) - 1)));
UPDATE my_contacts SET interest3 = SUBSTRING_INDEX(interests, ',', 1);
UPDATE my_contacts SET interests = TRIM(RIGHT(interests, (LENGTH(interests)-
LENGTH(interest3) - 1)));

UPDATE my_contacts SET interest4 = interests;

####  PAGE 291

SELECT * FROM my_contacts
WHERE gender = 'F'
AND status = 'single'
AND seeking LIKE '%relationship, friends%'
AND birthday > '1979-09-10'
AND birthday < '1981-09-10'
AND 
(
interest1 = 'animals'
OR interest2 = 'animals'
OR interest3 = 'animals'
OR interest4 = 'animals'
)
AND
(
 interest1 = 'trading cards'
OR interest2 = 'trading cards'
OR interest3 = 'trading cards'
OR interest4 = 'trading cards'
)
AND
(
interest1 = 'geocaching'
OR interest2 = 'geocaching'
OR interest3 = 'geocaching'
OR interest4 = 'geocaching'
);






