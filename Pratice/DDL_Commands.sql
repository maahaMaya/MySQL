SHOW DATABASES;
CREATE DATABASE MphasisPratice;

USE MphasisPratice;


-- PS2 - 1
-- Create a Pastriestable.•It should include 2 columns: name and quantity. Name is 50 characters max.•Inspect your table/columnsin the CLI.•Delete the table.
CREATE TABLE Pastries(
	name varchar(50),
    qunatity int
);
SELECT * FROM Pastries;

-- PS2 - 2
-- Create a Peopletable.•It should have 3 columns: first_name (20), last_name (20), age.•Insert thefirstfew rowsone by one.o‘Tina’, ’Belcher’ 13o‘Bob’, ’Belcher’,42•
-- Now Insert multiple rows by one single commando'Linda', 'Belcher',45o'Phillip', 'Frond', 38o'Calvin', 'Fischoeder', 70
CREATE TABLE People(
 first_name varchar(20), 
 last_name varchar(20), 
 age int
)
SELECT * FROM People;


INSERT INTO People VALUE ('Tina', 'Belcher',  13);
INSERT INTO People(first_name, last_name, age) VALUE ('Bob', 'Belcher',  42);

INSERT INTO People(first_name, last_name, age) VALUES ('Linda', 'Belcher',  45), ('Phillip', 'Frond',  38), ('Calvin', 'Fischoder',  70);
 
-- PS2 - 3
-- Define an Employeestable with following fields:•id -number (automatically increments), mandatory, primary key.•last_name -text, mandatory•first_name-text, mandatory•middle_name -text, not mandatory•age -number mandatory•current_status -text, mandatory, defaults to 'employed'.
-- Which is the best possible DDL command you writefor above problem?
CREATE TABLE Employees
(
	id int PRIMARY KEY auto_increment NOT NULL,
    last_name varchar(50) NOT NULL,
    first_name varchar(50) NOT NULL,
    middle_name varchar(50),
    age int NOT NULL,
    current_status ENUM('default', 'employed') NOT NULL
);

-- PS2 - 4 
-- Write a SQL statement to create a table named jobs including columns.•job_id•job_title•min_salary•max_salary 
-- Check whether the max_salary amount exceeding the upper limit 25000
CREATE TABLE jobs
(
	job_id int PRIMARY KEY auto_increment NOT NULL,
    job_title varchar(50) NOT NULL,
    min_salary int NOT NULL,
    max_salary int NOT NULL
);

SELECT * FROM jobs WHERE max_salary > 25000;

-- PS2 - 5 
-- Write a SQL statement to create a table named countries including columns.•country_id•country_name•region_id 
-- Make sure that no countries except Italy, India and China will be entered in the tableandmakesure that the country_idcolumn will be a key field which will not contain any duplicate data at the time of insertion
CREATE TABLE countries
(
	country_id int PRIMARY KEY auto_increment NOT NULL,
    country_name ENUM('Italy', 'Indian', 'China') NOT NULL,
    country_region int NOT NULL
);

INSERT INTO countries(country_name, country_region) VALUE('Indian', 2);
SELECT * FROM countries;

-- PS - 6
-- Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id and department_id and 
-- make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key column job_id contain only those values which are exists in the jobs table

CREATE TABLE job_history
(
	employee_id int PRIMARY KEY auto_increment NOT NULL,
    start_date date NOT NULL,
    end_date date NOT NULL,
    job_id int  NOT NULL,
    department_id int NOT NULL,
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

-- PS2 - 7
-- Refer the previous problem statement 6
-- Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id column does not contain 
-- any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. 
-- The InnoDB Engine have been used to create the tables. The specialty of the statement is that The ON DELETE CASCADE that lets you allow to delete records in the employees(child) table that refer to a record 
-- in the jobs(parent) table when the record in the parent table is deleted and the ON UPDATE RESTRICT actions reject any updates.

ALTER TABLE job_history ADD FOREIGN KEY (job_id) REFERENCES jobs(job_id) ON DELETE CASCADE; 
ALTER TABLE job_history ADD FOREIGN KEY (job_id) REFERENCES jobs(job_id) ON UPDATE RESTRICT;
DESCRIBE job_history

