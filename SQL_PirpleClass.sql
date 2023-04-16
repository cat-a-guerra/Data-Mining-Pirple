select * from procedure;

select specialty, count(id) as physician_count from physician
group by specialty
order by 2 desc
limit 10;

select specialty, count(distinct procedure_code)
from physician a
join procedure b on a.id = b.physician_id
group by specialty;