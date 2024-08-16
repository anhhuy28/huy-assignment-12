USE pizza_restaurant;

CREATE TABLE IF NOT EXISTS customers (
    CustomerID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    PhoneNumber VARCHAR(20) NOT NULL
);

CREATE TABLE IF NOT EXISTS pizzas (
    PizzaID INT AUTO_INCREMENT PRIMARY KEY,
    PizzaName VARCHAR(255) NOT NULL,
    Price DECIMAL(5, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS orders (
    OrderID INT AUTO_INCREMENT PRIMARY KEY,
    OrderDateTime DATETIME NOT NULL,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES customers(CustomerID)
);

CREATE TABLE IF NOT EXISTS orderdetails (
    OrderDetailID INT AUTO_INCREMENT PRIMARY KEY,
    OrderID INT,
    PizzaID INT,
    Quantity INT NOT NULL,
    FOREIGN KEY (OrderID) REFERENCES orders(OrderID),
    FOREIGN KEY (PizzaID) REFERENCES pizzas(PizzaID)
);

INSERT INTO pizzas (PizzaName, Price) VALUES ('Pepperoni & Cheese', 7.99);
INSERT INTO pizzas (PizzaName, Price) VALUES ('Vegetarian', 9.99);
INSERT INTO pizzas (PizzaName, Price) VALUES ('Meat Lovers', 14.99);
INSERT INTO pizzas (PizzaName, Price) VALUES ('Hawaiian', 12.99);

INSERT INTO customers (Name, PhoneNumber) VALUES ('Trevor Page', '226-555-4982');
INSERT INTO customers (Name, PhoneNumber) VALUES ('John Doe', '555-555-9498');
INSERT INTO customers (Name, PhoneNumber) VALUES ('Guest', '999-999-9999');

INSERT INTO orders (OrderDateTime, CustomerID) VALUES ('2023-09-10 09:47:00', 1);
INSERT INTO orderdetails (OrderID, PizzaID, Quantity) VALUES (1, 1, 2);

INSERT INTO orders (OrderDateTime, CustomerID) VALUES ('2023-09-10 09:47:00', 1);
INSERT INTO orderdetails (OrderID, PizzaID, Quantity) VALUES (2, 1, 2);

INSERT INTO orders (OrderDateTime, CustomerID) VALUES ('2023-09-10 14:47:00', 2);
INSERT INTO orderdetails (OrderID, PizzaID, Quantity) VALUES (3, 1, 1);

INSERT INTO orders (OrderDateTime, CustomerID) VALUES ('2023-09-11 11:47:00', 1);
INSERT INTO orderdetails (OrderID, PizzaID, Quantity) VALUES (4, 4, 4);

INSERT INTO orders (OrderDateTime, CustomerID) VALUES ('2023-09-11 18:47:00', 3);
INSERT INTO orderdetails (OrderID, PizzaID, Quantity) VALUES (5, 2, 2);