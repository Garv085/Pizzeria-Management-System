use proj_1;
-- Populating the table 

INSERT INTO orders (row_id,order_id,created_at,PizzaId,quantity,cust_id,add_id,Dp_id)
VALUES 
(1 , 1 , "2023-06-11 11:22:22" , 101 , 1 , 1001 , 1 , 22),
(2 , 2 , "2023-06-11 22:22:24" , 103 , 3 , 1002 , 2 , 23),
(3 , 3 , "2023-06-12 20:45:22" , 110 , 4 , 1003 , 3 , 22),
(4 , 4 , "2023-06-13 23:11:15" , 101 , 5 , 1004 , 4 , 23);


INSERT INTO Customers (cust_id,cust_firstname,cust_lastname,Phone)
VALUES 
(1001 , 'Garv' , 'Bansal' , '9416210050'),
(1002 , 'Donald' ,'Trump' , '94222220050'),
(1003 , 'Barak' , 'Obama' , '941233223350'),
(1004 , 'Rishi' , 'Sunak' , '9226214033');


INSERT INTO Address (add_id,delivery_address1,delivery_address2,delivery_city,delivery_zipcode)
VALUES 
(1 , 'Flat no. 505 , Ghs - 102 , Sector 20 ' , 'PKL,HR' , 'PKL','134117'),
(2 , 'Flat no. 506 , Ghs - 102 , Sector 20 ' , 'PKL,HR' , 'PKL','134117'),
(3 , 'Flat no. 507 , Ghs - 102 , Sector 20 ' , 'PKL,HR' , 'PKL','134117'),
(4 , 'Flat no. 508 , Ghs - 102 , Sector 20 ' , 'PKL,HR' , 'PKL','134117');


INSERT INTO Pizza (PizzaId,Name,Description,Size,Price,ing_id)
VALUES 
(101 , 'Margharita' , 'Cheese Burst' , 'Medium', 10.99 , 111),
(103 , 'peperroni' , 'Extra Olives' , 'Large', 20.99 , 211),
(110 , 'Farmhouse' , 'Cheese Burst' , 'Small', 8.99 , 115);


INSERT INTO Ingredients (ing_id,Ing_name,Ing_price,QuantityInStock)
VALUES 
(111 , 'Cheese' , 1.99 , 10),
(211 , 'peperroni' , 5.99 , 5),
(115 , 'Tomatoes' , 0.99 , 15);


INSERT INTO Customers (cust_id,cust_firstname,cust_lastname,Phone)
VALUES 
(1001 , 'Garv' , 'Bansal' , '9416210050'),
(1002 , 'Donald' ,'Trump' , '94222220050'),
(1003 , 'Barak' , 'Obama' , '941233223350'),
(1004 , 'Rishi' , 'Sunak' , '9226214033');



