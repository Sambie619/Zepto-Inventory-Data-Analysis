create  table ZEPTO(
SKU_ID SERIAL primary key,
CATEGORY VARCHAR(120),
NAME VARCHAR(120)not null,
MRP NUMERIC(8,2),
DISCOUNTPERCENT NUMERIC(5,2),
AVAILABLEQUANTITY INTEGER,
DISCOUNTEDSELLINGPRICE NUMERIC(8,2),
WEIGHTINGMS INTEGER,
OUTOFSTOCK BOOLEAN,
QUANTITY INTEGER
);
--Ensuring all the rows are imported correctly
select count(*)from zepto;
--visualizing the top rows
select * from zepto limit 5;
--checking the null columns
select * from zepto where 
category is null or name is null or mrp is null or discountpercent  is null or
availablequantity  is null or discountedsellingprice  is null or weightingms  is null or outofstock  is null or quantity  is null;
--Looking at the distinct product category 
select distinct category from zepto order by category;
--how many items are out of stock
select outofstock,count(sku_id) from zepto group by outofstock ;
--Product names present multiple times
select name,count(sku_id)from zepto group by name 
having count(sku_id)>1 order by count(sku_id) desc;
--Data Cleaning
--Check if product prices are 0
select * from zepto where mrp = 0 or discountedsellingprice=0;
We found one such column it cant possibly happen so delete that row
delete from zepto where mrp = 0;
--Update some columns with wrong data format
update zepto set mrp=mrp/100.00,discountedsellingprice=discountedsellingprice/100.00;
select  mrp,discountedsellingprice from zepto;

--lets see which products have the highest discount 
select distinct name,mrp,discountpercent from zepto 
order by discountpercent desc limit 10;

--see if any highly priced item is outof stock
select distinct name,mrp from zepto where outofstock = true and mrp >300 order by mrp desc;
--see which category generates the highest revenue
select category,sum(discountedsellingprice*availablequantity) as revenue from zepto group by category order by revenue desc;
--see products which are costly and hardly have any discount
select distinct name,mrp,discountpercent from zepto where mrp>500 and discountpercent <10 order by mrp desc,discountpercent desc;

--chack categories having highest discount percent in average 

select category,round(AVG(discountpercent),2)as discounted_percentage from zepto
group by category order by discounted_percentage desc limit 6;

--price/gram for products above 100g and sort by best value

select distinct name,weightingms,discountedsellingprice,round(discountedsellingprice/weightingms,2)as pricepergram from zepto
where weightingms >100 order by pricepergram desc;

--group products into categories like low,medium,bulk

select distinct name,weightingms,case when 
weightingms < 1000 then 'Low'         when
weightingms<5000   then  'Medium'     else 
'Bulk' end as Weight_Category  from 
zepto;

--Total inventory weight per category

select category,sum(weightingms*availablequantity)as weight_per_Category
from zepto group by category order by weight_per_category desc;







