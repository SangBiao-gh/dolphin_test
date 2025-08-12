insert into orders_expand
select
    t1.*,
    t2.first_name,
    t2.last_name,
    t2.email,
    t2.phone_number
from orders t1
left join customers t2
on t1.customer_id = t2.customer_id