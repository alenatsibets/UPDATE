update film
set rental_duration = 3,
rental_rate = 9.99
where title = 'Amélie';

update customer
set first_name = 'ALENA',
last_name = 'TSIBETS',
email = 'tsibets.alena@student.ehu.lt',
address_id = 2
where customer_id = 1;

--select * from staff
--select * from rental
--select * from inventory
--select * from payment

insert into rental (rental_date, inventory_id, customer_id, staff_id)
values (current_date, 157, 1, 2), (current_date, 158, 1, 2), (current_date, 159, 1, 4), 
(current_date, 160, 1, 2), (current_date, 161, 1, 2), (current_date, 162, 1, 2), 
(current_date, 163, 1, 2), (current_date, 164, 1, 3), (current_date, 165, 1, 2),
(current_date, 166, 1, 1);

insert into payment (customer_id, staff_id, rental_id, amount, payment_date)
values (1, 2, (select rental_id from rental where inventory_id = 157 and customer_id = 1), 2, '2017-01-24 20:40:19.996577+02'), 
(1, 2, (select rental_id from rental where inventory_id = 158 and customer_id = 1), 2, '2017-01-24 20:40:19.996577+02'), 
(1, 4, (select rental_id from rental where inventory_id = 159 and customer_id = 1), 2, '2017-01-24 20:40:19.996577+02'), 
(1, 2, (select rental_id from rental where inventory_id = 160 and customer_id = 1), 2, '2017-01-24 20:40:19.996577+02'), 
(1, 2, (select rental_id from rental where inventory_id = 161 and customer_id = 1), 2, '2017-01-24 20:40:19.996577+02'), 
(1, 2, (select rental_id from rental where inventory_id = 162 and customer_id = 1), 2, '2017-01-24 20:40:19.996577+02'), 
(1, 2, (select rental_id from rental where inventory_id = 163 and customer_id = 1), 2, '2017-01-24 20:40:19.996577+02'), 
(1, 3, (select rental_id from rental where inventory_id = 164 and customer_id = 1), 2, '2017-01-24 20:40:19.996577+02'), 
(1, 2, (select rental_id from rental where inventory_id = 165 and customer_id = 1), 2, '2017-01-24 20:40:19.996577+02'),
(1, 1, (select rental_id from rental where inventory_id = 166 and customer_id = 1), 2, '2017-01-24 20:40:19.996577+02');

update customer
set create_date = current_date
where customer_id = 1;