CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    product_id INT,
    product_name VARCHAR(100),
    category VARCHAR(50),
    amount DECIMAL(10, 2),
    quantity INT,
    payment_method VARCHAR(50),
    order_status VARCHAR(50)
);
INSERT INTO orders (order_id, order_date, customer_id, product_id, product_name, category, amount, quantity, payment_method, order_status) VALUES 
(1, '2025-03-11', 1008, 201, 'Bluetooth Speaker', 'Home', 70.95, 2, 'PayPal', 'Cancelled'),
(2, '2024-04-21', 1011, 206, 'Electric Toothbrush', 'Fitness', 292.21, 4, 'Debit Card', 'Cancelled'),
(3, '2024-11-21', 1008, 210, 'LED Monitor', 'Fitness', 143.34, 1, 'Credit Card', 'Cancelled'),
(4, '2025-03-05', 1000, 207, 'Coffee Maker', 'Office', 110.90, 1, 'Net Banking', 'Delivered'),
(5, '2024-09-17', 1001, 206, 'LED Monitor', 'Fitness', 472.68, 3, 'Credit Card', 'Cancelled'),
(6, '2024-06-09', 1009, 200, 'Smartphone', 'Electronics', 359.40, 1, 'PayPal', 'Delivered'),
(7, '2024-05-12', 1012, 209, 'Wireless Mouse', 'Electronics', 25.99, 2, 'Credit Card', 'Shipped'),
(8, '2025-01-27', 1015, 203, 'Gaming Keyboard', 'Office', 85.75, 1, 'Debit Card', 'Pending'),
(9, '2024-10-30', 1003, 205, 'Backpack', 'Clothing', 39.90, 1, 'Net Banking', 'Delivered'),
(10, '2024-07-14', 1004, 208, 'Running Shoes', 'Fitness', 112.00, 1, 'PayPal', 'Shipped'),
(11, '2025-02-18', 1002, 202, 'Coffee Maker', 'Home', 78.10, 2, 'Credit Card', 'Cancelled'),
(12, '2024-12-03', 1013, 207, 'LED Monitor', 'Office', 235.00, 1, 'Debit Card', 'Delivered'),
(13, '2024-08-24', 1010, 204, 'Bluetooth Speaker', 'Electronics', 55.55, 1, 'PayPal', 'Shipped'),
(14, '2024-11-19', 1016, 206, 'Electric Toothbrush', 'Fitness', 89.99, 1, 'Net Banking', 'Delivered'),
(15, '2025-01-09', 1011, 201, 'Wireless Mouse', 'Electronics', 29.95, 1, 'Credit Card', 'Pending'),
(16, '2024-04-28', 1006, 209, 'Gaming Keyboard', 'Office', 95.49, 2, 'Debit Card', 'Cancelled'),
(17, '2024-06-18', 1005, 210, 'Smartphone', 'Electronics', 399.99, 1, 'Net Banking', 'Delivered'),
(18, '2024-09-05', 1007, 203, 'Office Chair', 'Office', 199.90, 1, 'PayPal', 'Delivered'),
(19, '2025-02-03', 1014, 200, 'Running Shoes', 'Fitness', 119.50, 1, 'Credit Card', 'Shipped'),
(20, '2024-03-22', 1017, 204, 'Backpack', 'Clothing', 44.80, 1, 'Debit Card', 'Delivered');
SELECT * FROM orders ;


SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
WHERE order_date BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY order_year, order_month
ORDER BY order_year ASC, order_month ASC;

