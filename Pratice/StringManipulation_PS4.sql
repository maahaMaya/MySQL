-- PS4 - String Functions

-- 1.Reverse and uppercasethe following sentence.
SELECT  REVERSE(UPPER("Why does my cat look at me with such hatred?"));

-- 2. What Does This Print Out?SELECT REPLACE (CONCAT ('I', ' ', 'like', ' ', 'cats'), ' ', '-');
-- I-like-cats

-- 3. Replace spaces in titles with '->' from books table.
USE BookStore;
SELECT
    REPLACE(title, " ", '->') AS title_Replace
FROM books;

-- 4. Reverse author’s last name character by character and display all last names and reverse last names.
SELECT
	author_lname, 
    REVERSE(author_lname)
FROM books;
-- 5.Print all author names in capital letters(Full Name).
SELECT
	CONCAT(
	UPPER(author_fname) , '  ', 
    UPPER(author_lname)) AS FullName
FROM books;

-- 6. Concatenate the title and released_year as “<title>was released in <released_year>“
SELECT
	CONCAT(
	title , '  was released in ', 
    released_year) AS details
FROM books;

-- 7.Print book titles and the length of each title.
SELECT
	title, LENGTH(title) AS BookLength
FROM books;

-- 8. Write an SQL query to fetch “author_fname” from Bookstable using the alias name as <AUTHOR_FIRST_NAME>.
SELECT
	author_fname AS AUTHOR_FIRST_NAME
FROM books;

-- 9.Write an SQL query to fetch “author_fname” from Bookstable in upper case.
SELECT
	UPPER(author_fname) 
FROM books;

-- 10.Write an SQL query to print the first three characters of “author_fname” from Bookstable.
SELECT
	SUBSTRING(author_fname, 1 , 3)
FROM books;

-- 11.Write an SQL query to find the position of the alphabet (‘m’) in the first name column ‘Michael’from Bookstable.
SELECT
	POSITION('m' IN  author_fname)
FROM books WHERE author_fname = 'Michael';
-- 12.Write an SQL query to print the “author_fname” from Books table after removing white spaces from the right side.
-- 13.Write an SQL query to print the “author_fname” from Books table after replacing ‘m’ with ‘M’.
SELECT REPLACE(author_fname, 'm', 'M') FROM books;
