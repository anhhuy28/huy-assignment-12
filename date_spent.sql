USE pizza_restaurant;

SELECT c.Name, c.PhoneNumber, DATE(o.OrderDateTime) AS OrderDate, SUM(od.Quantity * p.Price) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderDetails od ON o.OrderID = od.OrderID
JOIN Pizzas p ON od.PizzaID = p.PizzaID
GROUP BY c.Name, c.PhoneNumber, DATE(o.OrderDateTime);