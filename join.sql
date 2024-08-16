SELECT customers.Name, SUM(pizzas.Price) AS total_spent
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
JOIN orderdetails ON orderdetails.OrderID = orders.OrderID
JOIN pizzas ON pizzas.PizzaID = orderdetails.PizzaID
GROUP BY customers.Name;

SELECT customers.Name, DATE(orders.OrderDateTime), SUM(pizzas.Price) AS total_spent
FROM customers
JOIN orders ON orders.CustomerID = customers.CustomerID
JOIN orderdetails ON orderdetails.OrderID = orders.OrderID
JOIN pizzas ON pizzas.PizzaID = orderdetails.PizzaID
GROUP BY customers.Name, orders.OrderDateTime;