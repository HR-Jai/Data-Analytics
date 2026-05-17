CREATE DATABASE company_db;

USE company_db;

CREATE TABLE Orders (
    order_id int(10) PRIMARY KEY,
    customer_id VARCHAR(10),
    customer_name VARCHAR(100),
    region VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10,2),
    discount_percent DECIMAL(5,2),
    total_sales DECIMAL(12,2),
    sales_date DATE,
    payment_method VARCHAR(50),
    delivery_status VARCHAR(50),
    customer_segment VARCHAR(50)
);

select *from orders;

SHOW VARIABLES LIKE 'secure_file_priv';



LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Excel_Advanced_Sales_Dataset_2000 (1).csv'
INTO TABLE Orders
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
(order_id, customer_id, customer_name, region, state, city, category,
product_name, quantity, unit_price, discount_percent, total_sales,
sales_date, payment_method, delivery_status, customer_segment);

ALTER TABLE Orders MODIFY order_id VARCHAR(20);

SET
 Discount_Percent = replace(@Discount_Percent,'%',''),
 
