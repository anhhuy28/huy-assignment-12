CREATE DATABASE pizza_restaurant;
USE pizza_restaurant;

CREATE TABLE Customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(300) NOT NULL,
    PhoneNumber VARCHAR(25) NOT NULL
);

CREATE TABLE Pizzas (
    PizzaID INT AUTO_INCREMENT PRIMARY KEY,
    PizzaName VARCHAR(300) NOT NULL,
    Price DECIMAL(5,2) NOT NULL
);

CREATE TABLE Orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    CustomerID INT,
    OrderDateTime DATETIME NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    PizzaID INT,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (PizzaID) REFERENCES Pizzas(PizzaID)
);

INSERT INTO Pizzas (PizzaName, Price) VALUES ('Pepperoni & Cheese', 7.99);
INSERT INTO Pizzas (PizzaName, Price) VALUES ('Vegetarian', 9.99);
INSERT INTO Pizzas (PizzaName, Price) VALUES ('Meat Lovers', 14.99);
INSERT INTO Pizzas (PizzaName, Price) VALUES ('Hawaiian', 12.99);