# Sales Insight Analysis Project

**Table of Contents**
- [Introduction to Project](#introduction-to-project)
- [Requirements](#requirements)
- [Local Setup Instructions](#local-setup-instructions)
- [How to use Dashboard](#how-to-use-dashboard)
    - [Performance Metrics](#performance-metrics)
    - [First Page](#first-page)
    - [Second Page](#second-page)
    - [Third Page](#third-page)
- [My Analysis](#my-analysis)
    - [Limitations](#limitations)
    - [Insights](#insights)
    - [Improvements](#improvements)

## Introduction to Project
The objective of this project is to create a pipeline that analyses sales data which helps discover sales insights. To better convey the data to stakeholders, a dashboard will be generated with Power BI.


Link to Live Dashboard:
https://app.powerbi.com/view?r=eyJrIjoiNmUxZTgzMTQtOWM3Yi00ZWI4LWI1MjktY2FjNWUwYzdkMmMxIiwidCI6IjRkMTRmM2MwLWJmYTItNGIwYS05MTgwLTUyYjljYzJkNjBjZiJ9&pageName=ReportSection

## Requirements
- Install [Git](https://git-scm.com/downloads)
- Install [MySQL](https://www.mysql.com/downloads/) and [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)
- Install [Microsoft PowerBI](https://www.microsoft.com/en-us/power-platform/products/power-bi)

## Local Setup Instructions
Follow the steps below to run this project locally:
1. Clone this repository: ```git clone "https://github.com/jtan-gh/sales-insight.git"```
2. Follow this [guide](https://dev.mysql.com/doc/workbench/en/wb-admin-export-import-management.html) to import the db_dump.sql into MySQL
3. Open the PowerBi file (file with pbix extension)
    - If the PowerBi file and the local MySQL server is not connected, refer to this [guide](https://learn.microsoft.com/en-us/power-bi/connect-data/service-gateway-sql-tutorial) to set up

## How to use Dashboard
### Performance Metrics

At the top of each page, users can instantly grasp the overall performance with key metrics:

- **Profit Margin:** The percentage of profit relative to revenue.
- **Sales:** The total value of sales transactions.
- **Revenue:** The total revenue generated.
- **Cost:** The total cost incurred.

### First Page
The Overview Dashboard provides a comprehensive snapshot of our entire business. Users can dynamically explore performance metrics using two control filters.

#### Control Filters
- **Select Years Filter:** Allows users to focus on a specific year of interest.
- **Interactive Margin Percentages by Market Chart:** The markets are sorted by percentage profit. A negative percentage means the market is losing us money. User can select each market to view performance metrics for that market.

#### Trends Over Time
To gain insights into performance trends over time, the dashboard includes dynamic trend charts:

- **Profit Margin Trend:** Illustrates the trend in profit margin over the selected period.
- **Sales Trend:** Displays the trend in total sales.
- **Revenue Trend:** Displays the trend in total revenue.

#### Example of Usage
1. Use the "Select Years" filter to focus on a specific year of interest.
2. Select the zone "Central" in the legends of Margin Percentages by Market
3. Observe the key metrics at the top for a quick overview of overall performance.
4. Analyze the dynamic trends to understand how profit margin, sales, and revenue have evolved for that zone over that year.

### Second Page
The Market Page can be used to compare the performance of the 3 zones and the submarkets in each zone. In this page, we've added a pie chart to better visualize the shares of each zone and market. 

#### Control filters:
- **Select Years Filter:** Allows users to focus on a specific year of interest.
- **Select Market Filter:** Allows users to select a specific set of zones and markets to analyze, while excluding the rest

#### Trends Over Time
- **Sales Trend:** Displays the trend in total sales.
- **Revenue and Cost Trend:** Displays the relation between revenue generated and operational costs.

#### Example of Usage
1. Use the "Select Years" filter to focus on a specific year of interest.
2. Select the merkets "Mumbai", "Delhi NCR", "Ahmededbad"
3. Observe the key metrics at the top for a quick overview of overall performance.
4. Analyze the dynamic trends to understand how revenue, cost, and sales have evolved for that zone over that year.

### Third Page
The Product Page is used to find our best products. In this page, we've a table, with all our products and some key metrics.

#### Control filters:
- **Select Years Filter:** Allows users to focus on a specific year of interest.
- **Select Prod Filter:** Allows users to select a specific set of products. An alternative option, is to select the rows of each prod in the table of products.

#### Trends Over Time
- **Profit Margin Trend:** Illustrates the trend in profit margin over the selected period.
- **Sales Trend:** Displays the trend in total sales.

#### Example of Usage
1. Use the "Select Years" filter to focus on a specific year of interest.
2. Sort the table by Revenue
3. Select Prod318 and Prod 316. To select multiple prod with the table, use ctrl + left click
4. Analyze the dynamic trends to understand how revenue, cost, and sales have evolved for that zone over that year.

## My Analysis
### Limitations
Before embarking on the analysis, it's imperative to address significant concerns within the dataset that may impact the accuracy of our insights. The first major issue stems from the presence of a 'blank' product category, where the value is null. This anomaly hints at potential discrepancies in our data pipeline, suggesting that certain transactions were not recorded or may lack crucial details.

This issue is critical as it introduces uncertainty into our analysis. The existence of a 'blank' product category makes it challenging to attribute sales, revenue, and cost figures accurately. This lack of specificity not only hampers our ability to identify and analyze trends related to this subset of transactions but also raises questions about the overall reliability of the dataset.

Furthermore, another limitation that needs consideration is related to currency conversion. The original data includes transactions in both USD and INR. Ideally, we would convert USD amounts to INR based on the exchange rates applicable at the time of each transaction. However, the absence of these historical rates poses a challenge. To address this, I've opted for a simplified approach by using current exchange rates.

While this simplification facilitates the analysis, it's important to acknowledge its limitations. Using current rates may not precisely reflect the currency conversion dynamics during the actual transaction periods, potentially impacting the accuracy of financial metrics. Despite these challenges, we aim to derive meaningful insights while remaining mindful of these data limitations, and steps will be taken to refine these aspects in future iterations of the dataset."

### Insights
To commence our analysis, let's direct our attention to the evaluation of our profit margins—a pivotal indicator of financial health. Significantly, our profit margins are notably low, with the highest reaching a modest 4.93% in January 2019 and the lowest plummeting to a concerning 0.49% in April 2020.

It's crucial to underscore that even the highest margin, though considered the peak in our dataset, remains notably low for a thriving business. Additionally, a margin nearing 0% signifies minimal to no profit, a circumstance that raises alarms for the financial viability of the business.

Furthermore, each year unveils a persistent challenge, as specific markets in the North or South zones consistently exhibit negative margin percentages, signaling ongoing financial losses. Notably, Bengaluru stands out as particularly worrisome, reflecting a staggering -20.78% profit margin.

This prevailing pattern prompts a deeper investigation into the operational dynamics and cost structures of these markets. Identifying the root causes behind these negative margins is paramount for devising strategic interventions and optimizing the financial performance of these regions.

Our business operates across three distinct zones: North, Central, and South. The North Zone stands out as our largest contributor to both profit and sales, accounting for approximately 70% of the total profit and 50% of sales. In contrast, the Central Zone follows with 25% of the total profit, representing roughly 35% of sales, and the South Zone contributes 5% of the total profit with only 15% of sales.

This data reveals that the North Zone is performing exceptionally well, being the leader both in terms of sales and profit. The South Zone, however, is particularly concerning as it contributes only 5% of the total profit, raising questions about the effectiveness of its sales strategy. The observed disparity suggests potential issues, whether related to product selection, pricing strategies, or profit margins. It becomes imperative to conduct a thorough analysis of the South Zone's sales practices to identify areas for improvement and rectify the observed challenges.

In addition to the concerns within the South Zone, it's noteworthy that all three zones experience a negative trend in sales. This shared challenge emphasizes the need for a holistic approach to address declining sales across the entire business. As we proceed with the analysis, understanding the factors contributing to this shared decline will be instrumental in formulating a comprehensive strategy for business improvement.

We commence our analysis by scrutinizing the top five items sold in all zones—Prod090, Prod239, Prod237, Prod318, and Prod245. Simultaneously, we consider the top five products in terms of profit—Prod329, Prod318, Prod316, Prod040, and Prod324. Notably, a stark disparity emerges as none of our top-selling items align with the top profitable ones, and vice versa.

During this exploration, a standout revelation surfaces—Prod237, the third highest-selling item, predominantly finding its market in the North. Despite its significant sales quantity, Prod237 reveals a concerning negative profit margin, prompting a deeper exploration into its impact on overall resources. Prod237 has recorded 115,000 units in sales, yet its profit margin stands at a discouraging -31,000. The juxtaposition of marginal profit against a substantial revenue of $7,309,835 and a high cost of $7,341,535 accentuates the inefficiency and resource drain linked to Prod237.

Shifting our focus to the least sold and least profitable items, a concerning trend emerges. Over 30 items in our inventory exhibit negative profitability, signaling a critical financial challenge. Simultaneously, more than 30 items are selling fewer than 1000 units, indicating a need for a comprehensive assessment of our product portfolio and market strategy.

This analysis underscores the pressing issues with our profit margins and market research. The disconnect between top sales and profitability highlights a misalignment in our product offerings with customer preferences and financial goals. To address this, we must prioritize understanding customer needs and recalibrating our product mix accordingly.

### Improvements
Enhancing the current dashboard experience is crucial for long-term usability. One notable improvement involves streamlining the analysis process, which currently involves manual manipulation of filters. To address this, I recommend integrating an automated system, potentially utilizing Selenium for filter selection or a Python script to generate a comprehensive monthly report.

For the automated report, our focus can revolve around key performance metrics, serving as a guide to evaluate monthly business performance. Questions such as "How does profit and sales compare to the previous month?" provide a dynamic snapshot of financial health. The identification of the "Top 5 products in sales and profit for each zone" can offer insights into regional performance trends. By determining any "overlaps in the Top 5," we gain a holistic understanding of consistently high-performing products. Additionally, monitoring "negative profit products" and those "selling less than 1000 units" becomes vital for identifying areas that may need strategic adjustments.

This proposed set of metrics will not only automate the current analysis but also serve as a comprehensive guide to gauge monthly performance across critical business aspects.
