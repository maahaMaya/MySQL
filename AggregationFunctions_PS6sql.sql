-- PS6
USE BookStore;
-- 1.Print the number of books in the database.
SELECT count(*) FROM books;

-- 2.Print out how many books were released in each year.
SELECT DISTINCT(released_year), SUM(DISTINCT stock_quantity) FROM books GROUP BY released_year;

-- 3.Print out the total number of books in stock.
SELECT SUM(stock_quantity) AS totalNumberOfBooks FROM books;

-- 4.Find the average released_year for each author.

-- 5.Find the full name of the author who wrote the longest book(in terms of pages)
SELECT  concat(author_fname , " ", author_lname) AS fullName FROM books WHERE pages = (SELECT MAX(pages) FROM books);

-- 8.Write an SQL query to show only odd rows from a table.
SELECT *  FROM books  WHERE mod(book_id, 2) = 0;

-- 9.Write an SQL query to show only even rows from a table.
SELECT *  FROM books  WHERE mod(book_id, 2) = 1;

-- 10.Write an SQL query to show the top n (say 10) records of a table.
SELECT * FROM books LIMIT 10;