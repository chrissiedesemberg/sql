#### Page 122

INSERT INTO clown_info
VALUES
('Bonzo' ,'Dickson Park','M, in drag, polka dotted dress', 'singing, dancing');

INSERT INTO clown_info 
VALUES 
('Sniffles' ,'Climbing into tiny car', 'M, green and purple suit, pointy nose','Honking the horn'); 

INSERT INTO clown_info 
VALUES 
('Mr. Hobo' ,'Party for Eric Gray' ,'M, cigar, black hair, tiny hat', 'violin');


##### PAGE 136

INSERT INTO drink_info
VALUES
(
'Kiss on the Lips', 5.5, 42.5, 'purple', 'Y', 170);

DELETE FROM drink_info
WHERE
drink_name = 'Kiss on the Lips' 
AND calories = 171;

INSERT INTO drink_info
VALUES
(
'Blackthorn', '3.00', '8.40', 'gold', 'Y', '33'), ('Greyhound', '4.00', '14.00', 'gold', 'Y', '50');

DELETE FROM drink_info
WHERE
color = 'yellow' 
AND ice = 'Y';

DELETE FROM drink_info
WHERE
cost = '2.50' 
AND
color = 'blue' OR color = 'green';

DELETE FROM drink_info
WHERE
cost = '3.50' 
AND
color = 'orange';

INSERT INTO drink_info
VALUES
('Blue Moon', '3.50', '3.20', 'blue', 'Y', '12'), ('Lime Fizz', '3.50', '5.40', 'green', 'Y', '24');

INSERT INTO drink_info
VALUES
('Oh My Gosh', '4.50', '8.60', 'orange', 'Y', '35');

#### PAGE 141

DELETE FROM clown_info
WHERE
name = 'Mr. Hobo' and activities = 'violin';

UPDATE clown_info
SET last_seen = 'Tracy\'s'
WHERE name = 'Mr. Hobo'
AND last_seen = 'Party for Eric Gray';

#### PAGE 150

UPDATE clown_info
SET appearance = 'M, Baggy blue pants'
WHERE name = 'Snuggles'
AND last_seen = 'Ball-Mart';

UPDATE clown_info
SET last_seen = 'Dickson Park'
WHERE name = 'Bonzo'
AND activities = 'singing, dancing';

UPDATE clown_info
SET last_seen = 'Climbing into tiny car'
WHERE name = 'Sniffles';

UPDATE clown_info
SET last_seen = 'Party for Eric Gray'
WHERE name = 'Mr. Hobo';

UPDATE drink_info
SET cost = cost + 1
WHERE
drink_name='Blue Moon'
OR
drink_name='Oh My Gosh'
OR
drink_name= 'Lime Fizz';

