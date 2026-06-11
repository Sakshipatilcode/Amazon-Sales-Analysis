CREATE DATABASE AMAZON_SALES;
USE AMAZON_SALES;
select*from  `amazon sale report_1` limit 10;

select sum(Amount) as Total_Revenue from `amazon sale report_1`;

select Category, sum(Amount) as Total_Sales from `amazon sale report_1` group by Category order by Total_Sales desc;

select Status, count(`Order ID`) as Total_Orders from `amazon sale report_1` group by status order by Total_orders desc;

select `ship-state`, sum(Amount) as Total_Sales from `amazon sale report_1` group by `ship-state` order by Total_Sales desc limit 5;

select Month, sum(Amount) as Monthly_Sales from `amazon sale report_1` group by Month order by Monthly_Sales desc;

select count(case when status= 'Cancelled' then 1 end)* 100/ count(*) as Cancellation_Rate from `amazon sale report_1`;

select round(avg(Amount),2) as avg_order_Value from `amazon sale report_1`;

select `ship-city`, count(*) as Total_Orders from `amazon sale report_1` group by `ship-city` order by Total_orders desc limit 5;

select B2B, sum(Amount) as Total_Sales From `amazon sale report_1` group by B2B;

select Size, count(*)as Total_Orders from `amazon sale report_1` group by Size order by Total_Orders desc;
