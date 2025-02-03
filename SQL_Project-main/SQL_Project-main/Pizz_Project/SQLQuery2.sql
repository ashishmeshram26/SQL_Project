select * from pizza_sales;
--Daily Treand
select datename(DW, order_date) as order_day , count(distinct order_id) as total_order from pizza_sales group by datename(DW, Order_date);

--hourly Treand
select DATEPART(HOUR,order_time) as order_hour, count(distinct order_id) as total_order from pizza_sales 
group by DATEPART(HOUR,order_time)
order by DATEPART(HOUR,order_time); 

select pizza_category , sum(total_price) as total_sales, sum(total_price)*100/ (select sum(total_price) from pizza_sales) as Total_prct_per_cat
from pizza_sales group by pizza_category ;

--Per per pizza size

select pizza_size , sum(total_price) as total_sales, sum(total_price)*100/ (select sum(total_price) from pizza_sales) as Total_prct_per_size
from pizza_sales group by pizza_size ;

--total sale by category

select pizza_category , sum(quantity) as total_sold from pizza_sales group by pizza_category ;

--top 5 highest sold pizza
 select top 5 pizza_name ,sum(quantity) as total_pizza_sold from pizza_sales group by pizza_name order by sum(quantity) DESC

 --top 5 highest sold pizza
  select top 5 pizza_name ,sum(quantity) as total_pizza_sold from pizza_sales group by pizza_name order by sum(quantity) ASC
