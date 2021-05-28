---groupby

---1.For each product_id transaction nber and Total sales
SELECT product_id,
       count(sales_id) AS "nber_transactions",
       ROUND(SUM(sale_amount)) AS "Total"        
FROM public.sale_records WHERE product_id IN ('P0', 'P1', 'P2')
GROUP BY product_id
ORDER BY "Total" ASC;

SELECT product_id, sum(sale_amount) AS "total",
       count(sales_id) AS nber_transactions,
       avg(sale_amount) AS avg_price 
FROM public.sale_records
WHERE sale_amount > 100
GROUP BY product_id;


SELECT sales_id, product_id,
       count(*) AS nber_transactions,
       avg(sale_amount) AS avg_price 
FROM public.sale_records
WHERE sale_amount > 100
GROUP BY sales_id, product_id;

SELECT
    continent,
    SUM(population) AS "Population_per_Continent"    
FROM country
GROUP BY continent
ORDER BY "Population_per_Continent";