CREATE TABLE Products (
    ProductID INTEGER PRIMARY KEY,
    ProductName TEXT NOT NULL,
    Price REAL NOT NULL
);

CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    FirstName TEXT NOT NULL,
    LastName TEXT NOT NULL,
    Email TEXT NOT NULL UNIQUE
);

CREATE TABLE SalesOrders (
    OrderID INTEGER PRIMARY KEY,
    ProductID INTEGER,
    CustomerID INTEGER,
    OrderDate TEXT NOT NULL,
    Quantity INTEGER NOT NULL,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Products (ProductName, Price) VALUES ('Product 1', 10.99);
INSERT INTO Customers (FirstName, LastName, Email) VALUES ('John', 'Doe', 'john.doe@example.com');
INSERT INTO SalesOrders (ProductID, CustomerID, OrderDate, Quantity) VALUES (1, 1, '2023-07-10', 5);

SELECT * FROM Products;
SELECT * FROM Customers;
SELECT * FROM SalesOrders;