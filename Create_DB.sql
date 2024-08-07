-- Query for Table creation

-- Create Authors table
CREATE TABLE Authors (
    author_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    birthdate DATE
);

-- Create Books table
CREATE TABLE Books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author_id INT REFERENCES Authors(author_id),
    published_date DATE,
    genre VARCHAR(50)
);

-- Create Customers table
CREATE TABLE Customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- Create Borrowed table
CREATE TABLE Borrowed (
    loan_id SERIAL PRIMARY KEY,
    book_id INT REFERENCES Books(book_id),
    customer_id INT REFERENCES Customers(customer_id),
    loan_date DATE NOT NULL,
    return_date DATE
);
