/*

 Executed in  https://livesql.oracle.com/

=> Question :  Find the employee id who self reported all symptoms
    
*/

SELECT emp_id
From symptom
WHERE symptom_id IN (SELECT symptom_id FROM symptomdescription)
GROUP BY emp_id
HAVING COUNT(*) = (SELECT COUNT(*) FROM symptomdescription);
