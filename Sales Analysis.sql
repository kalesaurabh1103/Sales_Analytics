use sales;
select count( *) from customers;
select count( *) from transactions;
select * from date;
select *from products;

select * from transactions 
where currency="USD"
limit 5;

select sum(transactions.Sales_amount) as Total_revenue
 from transactions
inner join date 
on transactions.order_date=date.date
where date.year=2019
and transactions.market_code='Mark001';

-- Show total revenue in year 2020, January Month,
select sum(transactions.sales_amount)as totalrevenue
from transactions inner join date
on transactions.order_date=date.date
where date.year=2020 and (date.month_name="January");

select * from transactions where sales_amount
<=0;

select distinct(currency) from transactions;

-- 'INR\r' , 'INR','USD','USD\r'
select count(*) from transactions where currency="usd";

select * from transactions;

select * from transactions where sales_amount<=0;




