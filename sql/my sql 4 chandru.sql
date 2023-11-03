-- Query to find a Total Donation Amount

select Donation.Total_donation_amount,Users.User_ID
from Donation
join Users
on Donation.User_ID = Users.User_ID
order by Donation.Total_donation_amount desc;

-- Query to find the ranking 

select u.User_ID, sum(d.Total_donation_amount) as Total_donation_amount, count(e.User_ID) as Number_of_events_participated,
DENSE_RANK() OVER( order by sum(d.Total_donation_amount) desc, count(e.User_ID) desc) Rank1 from users u 
join events e on u.User_ID = e.User_ID 
join donation d on u.User_ID = d.User_ID
group by u.User_ID;

select User_ID,count(User_ID) as Number_of_events_participated,
DENSE_RANK() OVER( count(User_ID) desc) Rank1 from users u 



-- Query to find total registration

select count(registration_id) as register_count
from syngrow.registration;

-- **** Query to delete whole ****--

SET SQL_SAFE_UPDATES=0;
delete from syngrow.users;

-- Top 5 customers in highest order amount

SELECT O.ORDERID,O.ORDERDATE,C.CUSTOMERID,C.CUSTOMERNAME
FROM CUSTOMERS C
JOIN ORDERS O
ON O.CUSTOMERID=C.CUSTOMERID
LIMIT 5;

-- products that order atlest three times

SELECT P.PRODUCTID,P.PRODUCTNAME,COUNT(P.PRODUCTID) AS PRODUCTCOUNT
FROM PRODUCTS P
JOIN ORDERDETAILS O
ON O.PRODUCTID=P.PRODUCTID
GROUP BY P.PRODUCTID
HAVING COUNT(P.PRODUCTID)>=3;

-- Retrieve name of customer who placed order in past 30 days 
 
SELECT O.ORDERID,O.ORDERDATE,C.CUSTOMERID,C.CUSTOMERNAME
FROM CUSTOMERS C
JOIN ORDERS O
ON O.CUSTOMERID=C.CUSTOMERID
WHERE ORDERDATE BETWEEN '1996-07-04' AND '1996-08-09';

-- Order detail for specific city

SELECT O.ORDERID,O.ORDERDATE,C.CUSTOMERID,C.CUSTOMERNAME,C.CITY,OD.PRODUCTID,OD.QUANTITY
FROM ORDERS O
JOIN ORDERDETAILS OD 
ON O.ORDERID=OD.ORDERID
JOIN CUSTOMERS C
ON C.CUSTOMERID=O.CUSTOMERID
GROUP BY CITY;


-- PRICE >100
SELECT C.CUSTOMERNAME,P.PRICE
FROM CUSTOMERS AS  C, ORDERDETAILS AS OD JOIN PRODUCTS AS P
ON OD.PRODUCTID=P.PRODUCTID
JOIN ORDERS AS O
ON OD.ORDERID=O.ORDERID
WHERE PRICE>100;



-- create a view-- 

CREATE VIEW sales.vw_netsales_brands
AS
	SELECT 
		c.brand_name, 
		MONTH(o.order_date) month, 
		YEAR(o.order_date) year, 
		CONVERT(DEC(10, 0), SUM((i.list_price * i.quantity) * (1 - i.discount))) AS net_sales
	FROM sales.orders AS o
		INNER JOIN sales.order_items AS i ON i.order_id = o.order_id
		INNER JOIN production.products AS p ON p.product_id = i.product_id
		INNER JOIN production.brands AS c ON c.brand_id = p.brand_id
	GROUP BY c.brand_name, 
			MONTH(o.order_date), 
			YEAR(o.order_date);

