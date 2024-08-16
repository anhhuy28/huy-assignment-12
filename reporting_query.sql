SELECT CustomerID, COUNT(*) AS total_transactions
FROM orders
JOIN orderdetails ON orders.OrderID = orderdetails.OrderID
GROUP BY CustomerID;

SELECT customers.CustomerID, customers.Name, COUNT(*) AS total_transactions
FROM orders
JOIN orderdetails ON orders.OrderID = orderdetails.OrderID
INNER JOIN customers ON customers.CustomerID = orders.CustomerID
GROUP BY orders.CustomerID;

SELECT * FROM orderdetails
WHERE Quantity > 1;

SELECT orderdetails.OrderID, orderdetails.PizzaID, pizzas.PizzaName, orderdetails.Quantity
FROM orderdetails
INNER JOIN pizzas ON pizzas.PizzaID = orderdetails.PizzaID
WHERE Quantity > 1;

SELECT pizzas.PizzaName, SUM(orderdetails.Quantity) AS Total_Sold
FROM orderdetails
INNER JOIN pizzas ON pizzas.PizzaID = orderdetails.PizzaID
GROUP BY pizzas.PizzaName;