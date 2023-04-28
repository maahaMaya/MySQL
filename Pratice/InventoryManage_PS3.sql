-- PS3

-- basic operations:
-- PS3 - 1
-- Create new database shirts_db
CREATE DATABASE shirts_db;
USE shirts_db;

-- PS3 - 2 
-- Create a new table Shirts–columns (shirt_id,article, color, shirt_size, last_worn)
CREATE TABLE Shirts(
	shirt_id int PRIMARY KEY auto_increment NOT NULL,
    article varchar(20) NOT NULL,
    color varchar(20) NOT NULL, 
    shirt_size ENUM('XS','S', 'M', 'L') NOT NULL, 
    last_worn int NOT NULL
);

-- PS3 - 3
-- Insert some starter data into the Shirts table

INSERT INTO Shirts (article, color, shirt_size, last_worn) VALUES 
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S',200),
('tank top', 'blue', 'M', 15);


SELECT * FROM Shirts;

-- DROP Table
DROP TABLE Shirts;

-- operations on the Shirtstable:
-- PS3 - 1
-- Add A New Shirt-Purple polo shirt, size M last worn 50 days ago.
INSERT INTO Shirts(article, color, shirt_size, last_worn) VALUE ('polo shirt', 'Purple', 'M', 50);

-- PS3 - 2
-- SELECT all shirts - But Only Print Out Article and Color.
SELECT article, color FROM Shirts;

-- PS3 - 3
-- SELECT all medium shirts - Print Out Everything But not shirt_id
SELECT article, color, shirt_size, last_worn FROM Shirts WHERE (shirt_size = 'M');

-- PS3 - 4
-- Update all polo shirts - Change their size to L.
UPDATE  Shirts SET  shirt_size='L' WHERE article = 'polo shirt';

-- PS3 - 5
-- Update the shirt last worn 15 days ago -Change last_worn to 0
UPDATE  Shirts SET  last_worn= 15 WHERE last_worn = 0;

-- PS3 - 6
-- Update all white shirts -Change size to 'XS' and color to 'off white'.
UPDATE  Shirts SET  shirt_size='XS', color = 'off white' WHERE color = 'white';

-- PS3 - 7
-- Delete all old shirts -Last worn 200 days ago.
DELETE FROM Shirts WHERE last_worn >=200;

-- PS3 - 8
-- Delete all tank tops
DELETE FROM Shirts WHERE article ='tank top';
