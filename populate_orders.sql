USE pizza_restaurant;

INSERT INTO Customers (Name, PhoneNumber) VALUES ('Trevor Page', '226-555-4982');
INSERT INTO Customers (Name, PhoneNumber) VALUES ('John Doe', '555-555-9498');

SELECT * FROM Customers;

INSERT INTO Orders (CustomerID, OrderDateTime) VALUES (1, '2023-09-10 09:47:00');
INSERT INTO Orders (CustomerID, OrderDateTime) VALUES (2, '2023-09-10 13:20:00');
INSERT INTO Orders (CustomerID, OrderDateTime) VALUES (1, '2023-09-10 09:47:00');
INSERT INTO Orders (CustomerID, OrderDateTime) VALUES (2, '2023-10-10 10:37:00');

SELECT * FROM Orders;

INSERT INTO OrderDetails (OrderID, PizzaID, Quantity) VALUES (1, 1, 1);
INSERT INTO OrderDetails (OrderID, PizzaID, Quantity) VALUES (1, 3, 1);
INSERT INTO OrderDetails (OrderID, PizzaID, Quantity) VALUES (2, 2, 1);
INSERT INTO OrderDetails (OrderID, PizzaID, Quantity) VALUES (2, 3, 2);
INSERT INTO OrderDetails (OrderID, PizzaID, Quantity) VALUES (3, 3, 1);
INSERT INTO OrderDetails (OrderID, PizzaID, Quantity) VALUES (3, 4, 1);
INSERT INTO OrderDetails (OrderID, PizzaID, Quantity) VALUES (4, 2, 3);
INSERT INTO OrderDetails (OrderID, PizzaID, Quantity) VALUES (4, 4, 1);

SELECT * FROM OrderDetails;