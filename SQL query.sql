
--showing the table--
select * from `workspace`.`default`.`bright_coffee_cons` limit 100;

-------Key perfomance indicators----
SELECT SUM(unit_price)
FROM  `workspace`.`default`.`bright_coffee_cons`;


SELECT SUM(transaction_qty)
FROM  `workspace`.`default`.`bright_coffee_cons`;


SELECT COUNT(transaction_id)
FROM  `workspace`.`default`.`bright_coffee_cons`;


----obsevations on perfomance----
SELECT AVG(unit_price)
FROM  `workspace`.`default`.`bright_coffee_cons`;

SELECT DISTINCT product_category , SUM(transaction_qty) AS Total_qty
FROM  `workspace`.`default`.`bright_coffee_cons`
GROUP BY product_category;


SELECT COUNT(transaction_qty),
CASE
WHEN transaction_time BETWEEN '07:00:00' AND '10:00:00' THEN 'Morning rush'
WHEN transaction_time BETWEEN '10:00:01' AND '12:00:00' THEN 'Brunch'
WHEN transaction_time BETWEEN '12:00:01' AND '18:00:00' THEN 'Day time'
ELSE 'evening'
END AS time_intervals
FROM `workspace`.`default`.`bright_coffee_cons`
GROUP BY time_intervals; 

SELECT DISTINCT product_category, COUNT(transaction_qty)
FROM `workspace`.`default`.`bright_coffee_cons`
GROUP BY product_category; 
