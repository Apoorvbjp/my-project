USE online_food_delivery;
show tables;
describe swiggy;

alter table swiggy
add primary key(ID);

SELECT * from swiggy;

/*find total row in a database*/
select count(*) from swiggy;

SELECT * from swiggy
where City = 'Bangalore';


#find the count of unique cites mentioned in the data base
select count(distinct city) from swiggy;


#find name of the unique city 
select distinct city
from swiggy;

#find count of restauranats in each city
select City,count(distinct Restaurant) 
from swiggy
group by city;

#find hotel number of city in desc 
select City,count(distinct Restaurant)as tot_hotel
from swiggy
group by city
order by tot_hotel desc;


#find total no of orders made from each restro
select restaurant, count(ID) as Orders
from swiggy
group by  restaurant
order by Orders desc;

#find 
select City, restaurant, count(ID) as Orders
from swiggy
group by City, restaurant
order by Orders desc;
