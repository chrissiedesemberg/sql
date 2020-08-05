CREATE TABLE profession
(
id INT(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
profession varchar(20)
);
INSERT INTO profession (profession)
SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;

CREATE TABLE profession AS
SELECT profession FROM my_contacts
GROUP BY profession
ORDER BY profession;
ALTER TABLE profession
ADD COLUMN id INT NOT NULL AUTO_INCREMENT FIRST,
ADD PRIMARY KEY (id);
