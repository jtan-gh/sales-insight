#Total Sales Amount per Year
SELECT
    YEAR(order_date) AS year,
    SUM(sales_amount) AS total_sales_amount
FROM
    transactions
GROUP BY
    YEAR(order_date);

#Total Sales Amount per Market
SELECT
    markets_name,
    SUM(sales_amount) AS total_sales_amount
FROM
    transactions
JOIN
    markets ON transactions.market_code = markets.markets_code
GROUP BY
    markets_name;

#Average Sales Quantity per Product Type
SELECT
    product_type,
    AVG(sales_qty) AS avg_sales_quantity
FROM
    transactions
JOIN
    products ON transactions.product_code = products.product_code
GROUP BY
    product_type;

#Average Sales Quantity per Product Code
SELECT
    product_code,
    AVG(sales_qty) AS avg_sales_quantity
FROM
    transactions
GROUP BY
    product_code;


#Total Sales Quantity per Customer Type
SELECT
    customer_type,
    SUM(sales_qty) AS total_sales_quantity
FROM
    transactions
JOIN
    customers ON transactions.customer_code = customers.customer_code
GROUP BY
    customer_type;


#Total Sales Amount per Market:
SELECT
    markets_name,
    SUM(sales_amount) AS total_sales_amount
FROM
    transactions
JOIN
    markets ON transactions.market_code = markets.markets_code
GROUP BY
    markets_name;

# Total Sales Quantity by Product Code
SELECT
    product_code,
    SUM(sales_qty) AS total_sales_quantity
FROM
    transactions
GROUP BY
    product_code;


# Average Sales Quantity by Product Code
SELECT
    product_code,
    AVG(sales_qty) AS avg_sales_quantity
FROM
    transactions
GROUP BY
    product_code;

#Monthly Sales Trends
SELECT
    year,
    month_name,
    SUM(sales_amount) AS total_sales_amount
FROM
    transactions
JOIN
    date ON transactions.order_date = date.date
GROUP BY
    year, month_name
ORDER BY
    year, month_name;

#Customer Type Breakdown
SELECT
    customer_type,
    COUNT(DISTINCT transactions.customer_code) AS customer_count
FROM
    transactions
JOIN
    customers ON transactions.customer_code = customers.customer_code
GROUP BY
    customer_type;
    





    
