/*

 Executed in  https://livesql.oracle.com/

*/

select floor_number as SICKEST_FLOOR
from (select * from healthstatus inner join employee on healthstatus.emp_id = employee.emp_id where healthstatus.status='sick' or healthstatus.status='hospitalized')
group by floor_number
order by count(floor_number) desc
fetch first 1 row only;

