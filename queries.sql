--ref view_1
-- Detail information about suppliers and the number of products that they provide.
SELECT s.id, s.name, s.email, s.telephone, s.created_at,
COUNT(p.id) AS number_of_products 
FROM suppliers s 
LEFT OUTER JOIN products p ON s.id = p.supplier_id 
GROUP BY s.id, s.name, s.email, s.telephone, s.created_at
ORDER BY number_of_products DESC;
--
--ref view_2
--10 best-selling products with the total amount and their supplier.
SELECT p.id AS product_id , p.name AS product_name,s.name AS supplier_name, 
SUM(oi.quantity) AS number_of_sold_items,
SUM(oi.quantity * oi.price) AS total_amount
FROM order_items oi
JOIN products p ON oi.product_id = p.id
JOIN suppliers s ON p.supplier_id = s.id
WHERE oi.returned_at IS NULL 
GROUP BY product_id,  product_name, supplier_name 
ORDER BY number_of_sold_items DESC
LIMIT 10;
--
--ref view_3
--List of customers and their total purchases
SELECT c.id as customer_id, c.name, c.email, c.address, c.telephone,c.created_at, c.last_login_at,
SUM(oi.quantity*oi.price) AS total_purchases
FROM customers c
LEFT OUTER JOIN orders o ON c.id = o.customer_id 
JOIN order_items oi ON o.id = oi.order_id AND oi.returned_at IS NULL
GROUP BY customer_id, c.name, c.email, c.address, c.telephone,c.created_at, c.last_login_at
ORDER BY total_purchases DESC;
--
--ref view_4
--List of returned items
SELECT oi.product_id,p.name,oi.order_id,oi.quantity,oi.price,oi.returned_at,pc.rating,pc.comment
FROM order_items oi 
JOIN products p ON oi.product_id = p.id 
LEFT OUTER JOIN product_comments pc on oi.id=pc.order_item_id
WHERE oi.returned_at IS NOT NULL
ORDER BY returned_at DESC;
--
--ref view_5
--List of products in the fashion category that were sold last month
SELECT oi.product_id, p.name AS product_name, p.description, p.price,p.quantity, c.name AS catagory_name, o.created_at as order_date
FROM categories c 
JOIN products p ON c.id = p.category_id
JOIN order_items oi ON p.id = oi.product_id AND oi.returned_at IS NULL
JOIN orders o ON oi.order_id = o.id AND o.created_at >= DATE_SUB(CURDATE(), INTERVAL 1 MONTH)
WHERE c.name = 'fashion'  
GROUP BY oi.product_id,product_name, p.description, p.price,p.quantity,catagory_name,order_date;