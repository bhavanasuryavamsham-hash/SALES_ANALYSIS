select * from sample s;
select sum(Sales) as total_sales from sample s ;
select   sum(Profit) as total_profit from sample s ;

select count('Order ID') as total_orders from sample s;

select Category,sum(Sales) as sales_by_category from sample s group by Category;

select Category,sum(Profit) as profit_by_category from sample s group by Category;

select 'Sub-Category',sum(Sales) as 'sales_by_sub-category' from sample s group by 'Sub-Category';

select 'Region',sum(Profit) as total_profit from sample s group by 'Region' limit 10;
select DISTINCT  Region from sample s ;

SELECT Region, SUM(Sales) AS total_sales_by_region
FROM sample s 
GROUP BY Region
ORDER BY total_sales_by_region  DESC;

select `Product Name`,sum(Sales) as top_products_by_sales
from sample s 
group by `Product Name`
order by top_products_by_sales DESC
LIMIT 10;

select `Product Name`,sum(Profit) as loss_making_products
from sample s 
group by `Product Name`
HAVING loss_making_products <0
order by loss_making_products ASC ;

select Discount,sum(Sales) as total_sales,sum(profit) as total_profit
from sample s 
group by Discount
order by Discount;

select `Ship Mode`, count(`Order ID`) as total_orders
from sample s 
group by  `Ship Mode`
order by total_orders DESC;

select Category,
sum(Sales) as total_sales,sum(Profit) as total_profit,(sum(Profit)/sum(Sales))*100 as profit_margin
from sample s 
group by Category 
order by profit_margin DESC ;

select `Order ID`,count(*) as duplicates_in_col
from sample s  
group by `Order ID`
having count(*)>1;

select count(*) as missing_postal_codes
from sample s 
where `Postal Code` IS NULL ;








