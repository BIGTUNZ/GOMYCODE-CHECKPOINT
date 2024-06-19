Create Database LibraryDB
GO

USE LibraryDB
GO

CREATE TABLE Books (
book_id INT NOT NULL,
title VARCHAR (50),
author VARCHAR (50),
publication_year DATE ,
isbn VARCHAR (50),
author_id INT,
);
GO
DROP TABLE Books

CREATE TABLE Authors (
author_id INT NOT NULL,
author_name VARCHAR (50),
birth_year DATE,
);
GO


CREATE TABLE Publisher (
publisher_id INT PRIMARY KEY,
publisher_name VARCHAR (50),
country_id INT,
);
GO


ALTER TABLE Books
ADD CONSTRAINT PK_Books PRIMARY KEY (book_id);
GO

ALTER TABLE Authors
ADD CONSTRAINT PK_Authors PRIMARY KEY (author_id);
GO

INSERT INTO Books
VALUES ( 1, 'To Kill A Mockingbird', 'Harper Lee', '1960', '978-0061120084', NULL),
(2, '1984', 'George Orwell', '1949', '978-0451524935', 2);

TRUNCATE TABLE Books

SELECT * FROM Books 

UPDATE Books
SET title = 'Diary Of A Wimpy Kid'
WHERE book_id = 2;


DELETE FROM Books 
WHERE publication_year = '1960-01-01';
