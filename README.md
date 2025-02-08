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

  
  ![3](https://github.com/user-attachments/assets/5c7a0ca6-f08b-4528-9b47-32a1bba63f54)

  Insight: Reflects the volume of products sold, highlighting product popularity and demand.

 - **Average Customer Rating**

       Metric: Average rating for items sold.

       select cast(avg(rating) as decimal(10,0)) as AverageRating 
       from BlinkIt
   
       Output : 4

   ![4](https://github.com/user-attachments/assets/748da300-e4aa-4141-9d49-7b37540fb843)
   
   Insight: Measures customer satisfaction, directly impacting repeat purchases and brand loyalty.

# Granular Analysis

 - **Total Sales by Fat Content**

Findings :

    Low Fat Items : Generated 83 Thousand in total sales with an average sale of 140.
    Regular Items : Generated 46 Thousand in total sales with an average sale of 139.

![5](https://github.com/user-attachments/assets/e5e5c7a6-9dee-405f-9942-b5249eed8acc)

Insight : Low-fat items dominate sales, indicating a growing preference for healthier options among customers.

 - **Total Sales by Item Type**

Top 5 Item Types :

    Fruits and Vegetables : 18457 in total sales.
    Snack Foods : 18103 in total sales.
    Frozen Foods : 14238 in total sales.
    Household : 14238 in total sales.
    Dairy: 10935 in total sales.

Insight : Certain item types contribute significantly to revenue, suggesting opportunities for targeted marketing and promotions.

- **Fat Content by Outlet for Total Sales**

Findings :

    Outlets in urban areas generate higher sales for low-fat items compared to rural areas.
    Regular items are more popular in tier-2 and tier-3 cities.

Insight : Tailoring product offerings based on outlet location can enhance sales.

- **Total Sales by Outlet Establishment Year**

Findings :

    Older outlets (established before 2010) generate higher sales compared to newer outlets.
    Newer outlets (established after 2020) show lower sales but higher growth potential.

Insight : Focus on improving visibility and marketing for newer outlets to accelerate their growth.

- **Percentage of Sales by Outlet Size**
  
Findings :

    Small Outlets : 37.01 % of total sales.
    Medium Outlets : 42.27 % of total sales.
    High Outlets : 20.72 %of total sales.

Insight : Larger outlets contribute disproportionately to revenue, highlighting the importance of scaling operations.

- **Sales by Outlet Location**

Sales by Outlet Location

Findings :

    Tier-1 generated 336397.81 
    Tier-2 generated 472133.03
    Tier-3 generated 393150.64

- **All Metrics by Outlet Type**
  
Findings :

    Supermarket Type 1 : $787549.89 in total sales, average sale of $141, and X/5 average rating.
    Supermarket Type 2 : $131477.77 in total sales, average sale of $142, and X/5 average rating.
    Supermarket Type 3 : $130714.67 in total sales, average sale of $140, and X/5 average rating.
    Grocery Store : $151939.15 in total sales, average sale of $140, and X/5 average rating.

Insight : Supermarket Type 1 dominates sales, but grocery stores have higher ratings, suggesting better customer satisfaction.

Key Findings

- Product Trends: Low-fat items and specific categories (e.g., Dairy) drive sales.
- Outlet Performance: Older, medium-sized outlets in Tier 3 cities outperform others.
- Customer Satisfaction: Average ratings are moderate, indicating room for improvement.

# Recommendations for Stakeholders

Product Strategy :

- Focus on promoting low-fat items, as they are gaining traction among health-conscious customers.
- Invest in expanding the inventory of top-performing item types to meet customer demand.

Outlet Optimization :

- Prioritize scaling larger outlets, as they contribute significantly to revenue.
- Provide additional support (e.g., marketing, staff training) to newer outlets to improve their performance.

Location-Based Targeting :

- Increase marketing efforts in urban areas to capitalize on high sales volumes.
- Explore untapped opportunities in tier-2 and tier-3 cities by tailoring product offerings to local preferences.

Customer Experience :

- Address gaps in customer satisfaction for outlets with lower ratings by improving service quality and product availability.
- Leverage positive feedback from grocery stores to enhance overall brand perception.

Data-Driven Decision Making :

- Use granular insights (e.g., fat content by outlet, sales by item type) to refine inventory management and promotional strategies.
- Continuously monitor KPIs to track progress and adjust strategies as needed.

Limitations

- Data filtered for 2020 in some analyses; consider multi-year trends.
- Ratings rounded to integers; use precise decimals for nuanced insights.


# Conclusion

This analysis provides a comprehensive view of BlinkIt's sales performance and customer behavior. By implementing the recommendations outlined above, stakeholders can optimize operations, enhance customer satisfaction, and drive revenue growth. Leveraging data-driven insights will ensure sustained success in an increasingly competitive market.

Prepared By: Khurram Naveed

Date: 08-02-2025



