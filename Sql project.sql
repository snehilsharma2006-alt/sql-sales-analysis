CREATE DATABASE sales_project;
USE sales_project;


CREATE TABLE orders_customer (
    Order_ID VARCHAR(20),
    Order_Date DATE,
    Region VARCHAR(20),
    Category VARCHAR(20),
    Customer_Name VARCHAR(50),
    Sales FLOAT,
    Profit FLOAT
);

INSERT INTO orders_customer VALUES
('CA-1001','2023-01-05','West','Furniture','Snehil',200,20),
('CA-1002','2023-01-07','East','Technology','Rahul',500,120),
('CA-1003','2023-01-10','South','Office Supplies','Amit',150,30),
('CA-1004','2023-02-01','West','Technology','Neha',700,200),
('CA-1005','2023-02-05','North','Furniture','Riya',300,50),
('CA-1006','2023-02-10','East','Office Supplies','Karan',100,10),
('CA-1007','2023-03-02','South','Furniture','Ankit',400,60),
('CA-1008','2023-03-08','West','Technology','Priya',800,250),
('CA-1009','2023-03-15','North','Office Supplies','Vikas',120,15),
('CA-1010','2023-04-01','East','Furniture','Simran',350,40),
('CA-1011','2023-04-05','West','Office Supplies','Arjun',90,5),
('CA-1012','2023-04-10','South','Technology','Rohit',600,180),
('CA-1013','2023-05-01','North','Furniture','Meena',450,70),
('CA-1014','2023-05-06','East','Technology','Aakash',750,210),
('CA-1015','2023-05-10','West','Office Supplies','Nisha',110,20),
('CA-1016','2023-06-01','South','Furniture','Deepak',500,90),
('CA-1017','2023-06-07','North','Technology','Pooja',650,160),
('CA-1018','2023-06-12','East','Office Supplies','Manoj',130,25),
('CA-1019','2023-07-01','West','Furniture','Kavita',380,55),
('CA-1020','2023-07-05','South','Technology','Varun',900,300);




SELECT * FROM orders_customer


SELECT 
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit
FROM orders_customer;




SELECT Region, SUM(Sales) AS Total_Sales
FROM orders_customer
GROUP BY Region
ORDER BY Total_Sales DESC;




SELECT 
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Sales
FROM orders_customer
GROUP BY MONTH(Order_Date)
ORDER BY Month;



SELECT TOP 5 Customer_Name, SUM(Sales) AS Total_Spent
FROM orders_customer
GROUP BY Customer_Name
ORDER BY Total_Spent DESC;



SELECT *
FROM orders_customer
WHERE Profit < 0;