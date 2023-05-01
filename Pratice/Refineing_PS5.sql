-- PS5
USE BookStore;
-- 1.Select All Story Collections -Titles That contain 'stories'word in it. For example,Title -What We Talk About When We Talk About Love: Stories Title -Where I'm Calling From: Selected Stories
SELECT * FROM books WHERE title REGEXP 'stories';

-- 2.Find the Longest Book, print the title,and page count.
SELECT title, pages FROM books WHERE pages = (SELECT Max(pages) FROM books);

-- 3.Print a summary containing the title and year, for the 3 most recent books.
SELECT title, released_year FROM books ORDER BY released_year DESC LIMIT 3;

-- 4.Find all books with an author_lname that contains a space (" ")
SELECT * FROM books WHERE author_lname like '% %';

-- 5.Find the 3 Books with The Lowest Stock - Select title, year, and stock.
SELECT title, released_year, stock_quantity FROM books ORDER BY stock_quantity  LIMIT 3;

-- 6.Print title and author_lname, sorted first by author_lname and then by title.
SELECT title, author_fname FROM books ORDER BY title, author_fname;

-- 7.Write an SQL query that fetches the unique values of “author_lname” from Books table and prints its length.
SELECT distinct(author_lname) AS  author_lname, length(author_lname) AS author_lname_length FROM books;

-- 8.Write an SQL query to print all Books details from the Books table order by “title” Ascending.
SELECT * FROM books ORDER BY title;

-- 9.Write an SQL query to print all Booksdetails from the Books table order by “title”Ascending and “released_year”Descending.
SELECT * FROM books ORDER BY title asc, released_year desc;

-- 10.Write an SQL query to print details for Books with the author first name as “Neil”, “Don” and “David” from Bookstable.
SELECT * FROM books WHERE author_fname = "Neil" or author_fname = "Don" or author_fname = "David";

-- 11.Write an SQL query to print details for Books excluding authorfirst name as“Neil”, “Don” and “David” from Bookstable.
SELECT * FROM books WHERE author_fname != "Neil" and author_fname != "Don" and author_fname != "David";

-- 12.Write an SQL query to print details of Bookswith titleas “The”.
-- 13.Write an SQL query to print details of the Bookswhose authorfirst name ends with ‘n’.
-- 13.Write an SQL query to print details of the Bookswhose authorfirst name ends with ‘n’.
-- 14.Write an SQL query to print details of the Bookswhose authorfirst name ends with ‘d’ and contains sevenalphabets.
-- 15.Write an SQL query to print details of the Bookswhose RELEASED YEARbetween 2000and 2020.
-- 16.Write an SQL query to fetch authornames with RELEASED YEAR>= 2000 and <= 2020.