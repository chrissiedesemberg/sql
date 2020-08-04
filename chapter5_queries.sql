### PAGE 199

ALTER TABLE my_contacts 
ADD COLUMN contact_number INT(10) DEFAULT NULL;

ALTER TABLE my_contacts 
ADD COLUMN contact_number INT(10) DEFAULT NULL
AFTER email;

#### PAGE 204

DESC projekts;

ALTER TABLE projeckts
RENAME TO project_list;

ALTER TABLE project_list
CHANGE COLUMN number proj_id INT NOT NULL AUTO_INCREMENT,
ADD PRIMARY KEY (proj_id);

ALTER TABLE project_list
CHANGE COLUMN descriptionofproj proj_desc VARCHAR(50),
CHANGE COLUMN contractoronjob con_name VARCHAR(50);

### Page 213

ALTER TABLE project_list
MODIFY COLUMN est_cost DECIMAL(7, 2);

#### PAGE 215

ALTER TABLE project_list
DROP COLUMN start_date;

DESC project_list;

### PAGe 217

ALTER TABLE hooptie
RENAME TO car_table;

ALTER TABLE car_table
ADD COLUMN car_id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (car_id);

ALTER TABLE car_table
ADD COLUMN VIN VARCHAR(50)
AFTER car_id;

ALTER TABLE car_table
CHANGE COLUMN mo model VARCHAR(50),
CHANGE COLUMN howmuch price VARCHAR(50) ,
ADD COLUMN color VARCHAR(20) AFTER model,
ADD COLUMN year INT(4) AFTER color;

ALTER TABLE car_table
CHANGE COLUMN year year VARCHAR(20) AFTER color;

#### PAGE 223

ALTER TABLE my_contacts
ADD COLUMN city VARCHAR(50),
ADD COLUMN state VARCHAR(2);

#### PRACTICE EXERCISES
SELECT RIGHT(location, 2) FROM my_contacts;

SELECT SUBSTRING_INDEX(location, ',', 1) FROM my_contacts;

SELECT SUBSTRING('San Antonio, TX', 5, 3);
SELECT UPPER('uSa');
SELECT LOWER('spaGHEtti');
SELECT LTRIM(' dogfood ');
SELECT RTRIM(' catfood ');
SELECT LENGTH('San Antonio, TX ');

#### PAGE 229

UPDATE my_contacts
SET state = RIGHT(location, 2);

ALTER TABLE my_contacts
DROP COLUMN location;

DESC my_contacts
