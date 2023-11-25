-- Q1-Print details of sales where amounts are > 2,000 and boxes are < 100
select * from sample_data.sales 
where Amount > 2000 and Boxes < 100;

-- Q2-How many sales did each of the salespersons have in January 2022?
select p.Salesperson, count(s.Amount)
from sales s
join people p 
on p.SPID = s.SPID
where s.SaleDate > '2022-01-01' and s.SaleDate < '2022-02-01'
group by 1
order by 2 desc;

-- Q3-Which product sells more boxes?
select p.Product, sum(s.Boxes) 
from products p 
join sales s 
on s.PID = p.PID 
group by 1
order by 2 desc;

-- Q4-Which product sold more boxes in the first 7 days of February 2022? 
select p.Product, sum(s.Boxes) 
from products p 
join sales s 
on s.PID = p.PID 
where s.SaleDate between '2022-02-01' and '2022-02-07'
group by 1
order by 2 desc
limit 1;


-- Q5-Which sales had under 100 customers & 100 boxes? Did any of them occur on Wednesday?
select *, case when weekday(SaleDate) = 2 then 'wed' else 'not wed' end as filtering
from sales
where Customers< 100 and Boxes < 100
order by 8 desc;





