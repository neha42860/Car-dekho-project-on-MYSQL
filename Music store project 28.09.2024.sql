SELECT * FROM musicstore.album2;

#who is the senior most Employee based on job title

select * from employee order by levels desc limit 1;

#which country have the most invoices

SELECT * FROM musicstore.invoice;
select count(*) as c , billing_country from invoice group by billing_country order by c desc ;

#what are top 3 values of total invoice
select total from invoice order by total desc limit 3;

#which city has the best customers? we would like to promotional music festival in the city we made query that returns one city that has the highest sum returns both the city name & sum of all invoice totals

select sum(total) as invoice_total, billing_city from invoice group by billing_city order by invoice_total desc;

#5------------
SELECT customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total
from customer
join invoice ON customer.customer_id = invoice.customer_id
group by customer.customer_id, customer.first_name, customer.last_name
order by total desc 
limit 1;

#-- Name and city of all the Customer who belong to Germany and Canada

Select first_name,last_name, city, Country from customer where Country in ("Germany", "Canada");

#--all the artist name where album id is >5 and <40

SELECT 
    artist.name, album2.album_id
FROM
    artist
        JOIN
    album2 ON artist.artist_id = album2.artist_id
GROUP BY artist.name , album2.album_id
HAVING album2.album_id > 5
    AND album2.album_id < 40;

#--Name and composer of the track whose media type id =2

select Name, Composer from track where media_type_id = 2;