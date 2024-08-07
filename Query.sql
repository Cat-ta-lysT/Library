-- Retrieve all books along with their authors

SELECT b.title, a.name AS author, b.published_date, b.genre
FROM Books b
JOIN Authors a ON b.author_id = a.author_id;

-- Find all books currently on loan:

SELECT b.title, p.name AS customer, l.loan_date
FROM Borrowed l
JOIN Books b ON l.book_id = b.book_id
JOIN Customers p ON l.customer_id = p.customer_id
WHERE l.return_date IS NULL;


-- SELECT b.title, b.published_date, b.genre
FROM Books b
JOIN Authors a ON b.author_id = a.author_id
WHERE a.name = 'J.K. Rowling';

--Update a book's genre	

UPDATE Books
SET genre = 'Adventure'
WHERE title = 'The Hobbit';

DELETE FROM Customers
WHERE customer_id = 3;
