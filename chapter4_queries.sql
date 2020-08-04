#### Page 161

SELECT * FROM fish_info
WHERE 
location LIKE '%NJ';

SELECT * from fish_records
WHERE
state = 'NJ';

### PAGE 189

CREATE TABLE people
(
contact_id INT NOT NULL AUTO_INCREMENT,
last_name VARCHAR(50) DEFAULT NULL,
first_name VARCHAR(50) DEFAULT NULL,
contact_number INT(10) DEFAULT NULL,
email VARCHAR(50) DEFAULT NULL,
PRIMARY KEY (contact_id)
);

INSERT INTO people (first_name, last_name, contact_number, email)
VALUES ('chrissie', 'desemberg', 0716784503, 'abc@abc.co.za');

INSERT INTO people (contact_id, first_name, last_name)
VALUES (NULL, 'Marcia', 'Brady');
INSERT INTO people (first_name, last_name)
VALUES ('Jan', 'Brady');
INSERT INTO people (first_name, last_name)
VALUES ('Bobby', 'Brady');
INSERT INTO people (first_name, last_name)
VALUES ('Cindy', 'Brady');
INSERT INTO people (first_name, last_name)
VALUES ('Peter', 'Brady');

#### PGE 231

ALTER TABLE my_contacts
ADD COLUMN contact_id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (contact_id);

SELECT * FROM my_contacts
WHERE
last_name LIKE '%er';
