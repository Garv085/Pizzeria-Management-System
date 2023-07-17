-- Queries we can perform

-- All Customers information

SELECT * 
FROM Customers;

-- Total No. of Orders 

SELECT count(*) 
FROM orders;

-- All orders with pizzaId 101

SELECT * 
FROM orders 
WHERE PizzaId = '101';

-- Creating a new order

INSERT INTO orders (row_id,order_id,created_at,PizzaId,quantity,cust_id,add_id,Dp_id)
VALUES 
(5 , 5 , "2023-06-11 11:22:22" , 101 , 1 , 1001 , 1 , 22);

-- Update a Pizza's Information

UPDATE Pizza
SET Size = 'SMALL' , Price = 11.99
WHERE PizzaId = 101;
-- The info has been updated
SELECT * 
FROM Pizza 
WHERE PizzaId = 101;

-- Deleting an ingridient

DELETE FROM Ingredients
WHERE ing_id = 115;

-- Total Amount of sales for each customer

SELECT 
customers.cust_id,
customers.cust_firstname,
SUM(orders.quantity * Pizza.Price) AS Total_price 
FROM (Customers INNER JOIN orders 
ON Customers.cust_id = orders.cust_id)
INNER JOIN Pizza ON orders.PizzaId = Pizza.PizzaId
GROUP BY cust_id;

-- Top-selling pizzas based on the total quantity ordered

SELECT 
Pizza.PizzaId,
pizza.Name,
SUM(orders.quantity) AS Total_pizza 
FROM orders INNER JOIN Pizza 
ON orders.PizzaId = Pizza.PizzaId
GROUP BY PizzaId
ORDER BY Total_pizza DESC;

-- The delivery personnel who have delivered the most orders

SELECT 
DeliveryPerson.Dp_id,
DeliveryPerson.dp_name,
Count(orders.order_id) AS Total_orders_delivered
FROM orders INNER JOIN DeliveryPerson 
ON orders.Dp_id = DeliveryPerson.Dp_id
GROUP BY Dp_id
ORDER BY Total_orders_delivered DESC;

-- We can perform all CRUD operations and much more with this pizzaria management system
