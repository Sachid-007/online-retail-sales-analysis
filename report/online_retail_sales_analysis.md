1. Project Overview
Objective
The goal of this project is to analyze online retail transaction data to identify key revenue drivers, valuable customer segments, sales trends, and customer retention behavior. The analysis supports business decisions related to product promotion, customer retention, and revenue optimization.
Business Context
An online retail company selling consumer goods wants to understand:
•	Which products generate the most revenue
•	Who their most valuable customers are
•	How sales change over time
•	Whether customers return to make repeat purchases
2. Tools & Technologies Used
•	Excel (Power Query) – Data cleaning and preparation
•	PostgreSQL – Data storage and SQL-based analysis
•	Tableau – Interactive dashboard and visualization
3. Dataset Description
•	Source: Online Retail II Dataset (UCI Machine Learning Repository)
•	Time Period: 2009–2011
•	Records after cleaning: ~800,000 transactions
Key Columns
•  invoice_no – Unique order identifier
•  invoice_date – Date of transaction
•  stock_code, description – Product details
•  quantity, unit_price – Sales details
•  customer_id – Unique customer identifier
•  revenue – Calculated as Quantity × Unit Price
4. Data Cleaning & Preparation
The dataset was cleaned using Power Query in Excel with the following steps:
•	Removed transactions with missing customer_id
•	Removed records with zero or negative quantity and unit_price
•	Standardized data types (dates, numbers, text)
•	Created a new Revenue column
•	Combined two years of data into a single analysis-ready table

5. Key Business Questions & Analysis
5.1 Which products drive the most revenue?
The top 3 products — REGENCY CAKESTAND 3 TIER, WHITE HANGING HEART T-LIGHT HOLDER, and PAPER CRAFT LITTLE BIRDIE — generate the highest revenue.
  Revenue is highly concentrated, indicating that a small number of products drive a large share of total sales.
 Focusing promotions, pricing, and inventory optimization on these products can significantly improve overall revenue.
5.2 Which customer segments are most valuable?
 A small group of high-value customers contributes disproportionately to total revenue.
 Top customers place frequent orders and have much higher lifetime value than average customers.
 These customers are strong candidates for VIP programs, loyalty rewards, and personalized offers.
5.3 How are sales trending over time?
Monthly revenue shows clear seasonality, with noticeable peaks toward the end of the year.
Sales growth is not uniform across months, highlighting the importance of seasonal demand planning.
Promotional campaigns and inventory planning should be aligned with high-demand periods to maximize revenue.
5.4 Are customers coming back? (Retention Analysis)
A repeat customer was defined as a customer with more than one order.
   Total Customers: 5,878
   Repeat Customers: 4,255
   Repeat Rate: ~72%
The high repeat rate indicates strong customer retention, but also highlights an opportunity to convert one-time buyers into repeat customers.
6. Dashboard Overview
An interactive Tableau dashboard was built to visualize:
https://public.tableau.com/views/OnlineRetailAnalysis_17687434834630/OnlineRetailSalesDashboard?:language=en-US&publish=yes&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link
7. Business Recommendations
1.  Focus marketing efforts on top-revenue products to maximize returns.
2. Implement loyalty programs for high-value and repeat customers.
3.  Leverage seasonal trends to plan promotions and inventory more effectively.
4. Target one-time buyers with personalized offers to improve retention.

