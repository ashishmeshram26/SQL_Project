use Pizza_Sales_project ;
select * from pizza_sales ;
--Total Revenue:
select sum(total_price) as total_revenue from pizza_sales ;

--Average Order Value
select sum(total_price) / count(distinct order_id) as average_orders from pizza_sales; 

--Total Pizzas Sold
select sum(quantity) as total_sold_pizza from pizza_sales;

--Total Orders
select count(distinct order_id) as total_orders from pizza_sales;

--Average Pizzas Per Order
select cast(sum(quantity)/count(distinct order_id) as decimal(5,2)) as Avrg_pizza_per_order from pizza_sales;

-- Daily Trend for Total Orders
select datename(DW, order_date) as order_day , count(distinct order_id) as total_order from pizza_sales group by datename(DW, Order_date);

--Monthly Trend for Orders
select datename(month, order_date) as order_month, count(distinct order_id) as total_order from pizza_sales group by datename(month, order_date);


--hourly Treand
select DATEPART(HOUR,order_time) as order_hour, count(distinct order_id) as total_order from pizza_sales 
group by DATEPART(HOUR,order_time)
order by DATEPART(HOUR,order_time); 

 --% of Sales by Pizza Category
select pizza_category , sum(total_price) as total_sales, sum(total_price)*100/ (select sum(total_price) from pizza_sales) as Total_prct_per_cat
from pizza_sales group by pizza_category ;

--% of Sales by Pizza Size
select pizza_size , sum(total_price) as total_sales, sum(total_price)*100/ (select sum(total_price) from pizza_sales) as Total_prct_per_size
from pizza_sales group by pizza_size ;

--Total Pizzas Sold by Pizza Category
select pizza_category , sum(quantity) as total_sold from pizza_sales group by pizza_category ;

--Top 5 Pizzas by Quantity
select top 5 pizza_name ,sum(quantity) as total_pizza_sold from pizza_sales group by pizza_name order by sum(quantity) DESC

--Bottom 5 Pizzas by Quantity
select top 5 pizza_name ,sum(quantity) as total_pizza_sold from pizza_sales group by pizza_name order by sum(quantity) ASC

--Top 5 Pizzas by Revenue
select top 5 pizza_name, sum(total_price) as total_pizza_sold from pizza_sales group by pizza_name order by sum(total_price) DESC ;

--Bottom 5 Pizzas by Revenue
select top 5 pizza_name, sum(total_price) as total_pizza_sold from pizza_sales group by pizza_name order by sum(total_price) ASC ;

--Top 5 Pizzas by Total Orders
select top 5 pizza_name, sum(distinct order_id) as total_pizza_sold from pizza_sales group by pizza_name order by sum(distinct order_id) DESC ;

--Bottom 5 Pizzas by Total Orders
select top 5 pizza_name, sum(distinct order_id) as total_pizza_sold from pizza_sales group by pizza_name order by sum(distinct order_id) ASC ;

