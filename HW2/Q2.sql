/*

 Executed in  https://livesql.oracle.com/
-- Symptom id displayed is the most self reported symptom
-- Symptom name displayed is the name of the most self reported symptom id

*/

select symptom_id from symptomdescription where symptom_id=(
select symptom_id
from symptom
group by symptom_id
order by count(symptom_id) desc
fetch first 1 row only
);
