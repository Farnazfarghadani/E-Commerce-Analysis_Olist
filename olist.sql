#Which categories sell the most?
SELECT 
  pct.product_category_name_english,
 count(order_id) as total_orders
FROM product_category_translation pct
join products p
on   p.product_category_name=  pct.product_category_name
join order_items oi
on p.product_id=oi.product_id
group by  pct.product_category_name_english
order by total_orders desc
limit 100;



#What are the most profitable customer regions?
select customer_state,sum(payment_value) as total_sales
from customers c
join orders o 
on c.customer_id=o.customer_id
join order_payments op
on op.order_id=o.order_id
group by customer_state
order by total_sales desc
;


#Which states have high complaints?
select customer_state, avg(review_score)
from customers c 
join orders o 
on c.customer_id=o.customer_id
join order_reviews r
on r.order_id=o.order_id
group by  customer_state
order by avg(review_score) asc;


#Which products have high complaints?
select p.product_id, pct.product_category_name_english, avg(review_score) as Average_review_score
from products p 
join order_items oi
on p.product_id=oi.product_id
join order_reviews ore
on ore.order_id=oi.order_id
join product_category_translation pct
on p.product_category_name=pct.product_category_name
group by product_id, pct.product_category_name_english
order by Average_review_score asc
limit 500;


#Which sellers have high complaints?
select s.seller_id, avg(ore.review_score)
from sellers s 
join order_items oi
on oi.seller_id=s.seller_id
join order_reviews ore
on ore.order_id=oi.order_id
group by s.seller_id
order by avg(ore.review_score) asc
limit 500;


#How does delivery time impact customer reviews?
select avg(review_score),
datediff(order_delivered_customer_date, order_estimated_delivery_date) as delivery_time
from order_reviews ore
join orders o
on o.order_id=ore.order_id
where datediff(order_delivered_customer_date, order_estimated_delivery_date) > 0
group by delivery_time
order by delivery_time asc
;


#What’s the trend in monthly sales?
select
date_format(order_purchase_timestamp, '%y-%m') as order_month,
sum(op.payment_value) as Total_sales
from orders o 
join order_payments op
on o.order_id=op.order_id
group by order_month
order by order_month asc;


#Which sellers are driving the most sales?
select seller_id, sum(price) as Total_sale
from order_items
group by seller_id
order by total_sale desc
limit 50;





