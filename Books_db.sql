#Creating Books Table
CREATE DATABASE book_shop;
USE book_shop;

CREATE TABLE books (
    book_id INT NOT NULL AUTO_INCREMENT,
    title VARCHAR(100),
    author_fname VARCHAR(100),
    author_lname VARCHAR(100),
    released_year INT,
    stock_quantity INT,
    pages INT,
    PRIMARY KEY (book_id));
    
INSERT INTO books(title,author_fname,author_lname,released_year,stock_quantity,pages)
VALUES('To kill a Mockingbird','christopher','sergel',1970,42,128),
      ('13 reasons why','jay','Asher',2007,21,288),
      ('The Hunger Games','suzanne','collins',2008,36,374),
      ('Ready Player One', 'Ernest','cline',2011,15,374);
      
#combining autor_fname and author_lname
SELECT author_fname,author_lname FROM books;
#concat command- adds two or more strings together
SELECT CONCAT (author_fname,' ',author_lname) FROM books;

#sorting the values
SELECT author_fname FROM books ORDER BY author_fname;
SELECT author_fname FROM books ORDER BY author_fname DESC;

#show number of records
SELECT title FROM books LIMIT 3;

#show matching values/pattern matching
SELECT title,author_fname FROM books WHERE author_fname LIKE '%a%';
SELECT author_fname,author_lname FROM books WHERE author_fname LIKE '%y';
SELECT author_fname,author_lname FROM books WHERE author_fname LIKE 'e%';

#Inserting new values and using group command
INSERT INTO books(title,author_fname,author_lname,released_year,stock_quantity,pages)
VALUES('To kill a Mockingbird','christopher','sergel',1970,42,128);
SELECT * FROM books;
SELECT title,author_fname FROM books
GROUP BY author_fname;


