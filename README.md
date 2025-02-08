# BlinkIt-s-Sales-Performance-and-Customer-Behaviour Analysis
This project focuses on analyzing the sales and performance metrics of the BlinkIt database using SQL Server.

The analysis provides insights into key performance indicators (KPIs), granular breakdowns of sales data, and actionable recommendations to improve business outcomes. By leveraging SQL queries, we have extracted meaningful insights that can guide decision-making and drive growth.


# Key Performance Indicators (KPIs)

- **Total Sales**

      Metric : Overall revenue generated from all items sold.
  
      select concat(cast(sum(total_sales)/100000 as decimal( 10,2)), '' , ' Millions') as Total_SaleInMillions
      from BlinkIt
  
      Output : 12.02 Millions

     ![1](https://github.com/user-attachments/assets/a6454f60-2f97-44c2-9711-1b302e0f12b1)

  Insight : This provides a high-level view of the company's revenue generation capabilities.

- **Average Sales**

      Metric : Average revenue per sale.

      select round(avg(total_sales),0) as Avg_Sale 
      from BlinkIt
  
      Output : 141
  
  ![2](https://github.com/user-attachments/assets/8f4144b5-c2fa-47eb-986e-5b9139f92e19)

  Insight : Indicates the average transaction size, which helps in understanding customer spending patterns.

- **Total Count of Items Sold**

      Metric: Total number of items sold.

      SELECT COUNT(*) AS NumberOfItem
      FROM BlinkIt
  
      Output : 8523
  
      Insight: Reflects the volume of products sold, highlighting product popularity and demand.

 - **Average Customer Rating**

       Metric: Average rating for items sold.

       select cast(avg(rating) as decimal(10,0)) as AverageRating 
       from BlinkIt
   
       Output : 4
   
       Insight: Measures customer satisfaction, directly impacting repeat purchases and brand loyalty.

#Granular Analysis
