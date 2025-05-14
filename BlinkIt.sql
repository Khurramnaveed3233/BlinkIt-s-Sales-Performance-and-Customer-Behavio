create database BlinkIt

select * from BlinkIt

SELECT COUNT(*) AS Total_Rows
FROM BlinkIt

-- KPI 1 . Total Sales : The overall revenue generated from all items sold 

select concat(cast(sum(total_sales)/100000 as decimal( 10,2)), '' , ' Millions') as Total_SaleInMillions
from BlinkIt

-- KPI2 . Average Sales : The average revenue per sales 

select round(avg(total_sales),0) as Avg_Sale 
from BlinkIt

-- KPI 3 . Total count of items sold 

SELECT COUNT(*) AS NumberOfItem
FROM BlinkIt

-- KPI 4 . Average customer rating for items sold 

select cast(avg(rating) as decimal(10,0)) as AverageRating 
from BlinkIt

--- Granular Analysis 

--1 . Total sales by fat content 

select item_fat_content AS Fat_Type_Item , 
       concat(cast(sum(total_sales)/1000 as decimal(10,0)), '' , ' Thousand') as Total_sales , 
	   round(avg(total_sales),0) as Avg_Sale , 
	   COUNT(*) AS NumberOfItem , 
	   cast(avg(rating) as decimal(10,0)) as AverageRating 
from BlinkIt
where Outlet_Establishment_Year = 2020
group by Item_Fat_Content
order by Total_sales desc 

--2. Total sales by item type 

select * from BlinkIt

select top 5 Item_type as Item_Type ,
      cast(sum(total_sales) as decimal(10,0))as Total_sales , 
	   round(avg(total_sales),0) as Avg_Sale , 
	   COUNT(*) AS NumberOfItem , 
	   cast(avg(rating) as decimal(10,0)) as AverageRating 
from BlinkIt
where Outlet_Establishment_Year = 2020
group by Item_Type
order by Total_sales desc 

--3.Fat content by outlet for total sales 

SELECT Outlet_Location_Type, 
       ISNULL([Low Fat], 0) AS Low_Fat, 
       ISNULL([Regular], 0) AS Regular
FROM 
(
    SELECT Outlet_Location_Type, Item_Fat_Content, 
           CAST(SUM(Total_Sales) AS DECIMAL(10,2)) AS Total_Sales
    FROM BlinkIt
    GROUP BY Outlet_Location_Type, Item_Fat_Content
) AS SourceTable
PIVOT 
(
    SUM(Total_Sales) 
    FOR Item_Fat_Content IN ([Low Fat], [Regular])
) AS PivotTable
ORDER BY Outlet_Location_Type;

--4. Total sales by outlet establishment year 

select outlet_establishment_year ,
cast(sum(total_sales) as decimal(10,2)) as Total_Sales ,
round(avg(total_sales),0) as Avg_Sale , 
	   COUNT(*) AS NumberOfItem , 
	   cast(avg(rating) as decimal(10,0)) as AverageRating 
from BlinkIt
group by Outlet_Establishment_Year
order by Total_Sales asc 

--5. Percentage of sales by outlet size 

select * from BlinkIt

select outlet_size as Outlet_Size ,
       cast(sum(total_sales) as decimal(10,2)) as Total_Sales , 
	   concat(cast(sum(total_sales)*100/sum(sum(total_sales)) over () as decimal(10,2)), '',' %' ) as Sales_percentage
from BlinkIt
group by Outlet_Size

-- 6. sales by outlet location 

select  Outlet_Location_Type,  cast ( sum(total_sales) as decimal(10,2) )  as Total_Sales
from BlinkIt
group by Outlet_Location_Type


-- 7. All matrics by outlet type

select outlet_type as Outlet_Type , 
cast(sum(total_sales) as decimal(10,2)) as Total_Sales ,
round(avg(total_sales),0) as Avg_Sale , 
	   COUNT(*) AS NumberOfItem , 
	   cast(avg(rating) as decimal(10,0)) as AverageRating 
from BlinkIt
group by outlet_type 
order by Total_Sales asc 
