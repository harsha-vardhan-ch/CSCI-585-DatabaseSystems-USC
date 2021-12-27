/*

 Executed in  https://livesql.oracle.com/
    
*/

--Number of Scans

select count(scan_id) as Number_of_scans from scan where scan_date between '05-SEP-2021' and '10-SEP-2021';

--Number of Tests

select count(test_id) as Number_of_tests from test where test_result='positive' and test_date between '01-SEP-2021' and '01-OCT-2021';

--Number of Employees who self reported symptoms

select count(emp_id) as number_of_employees_self_reported_symptoms from symptom where reported_date between '05-SEP-2021' and '10-SEP-2021';

--Number of positive cases 

select count(test_result) as number_of_positive_cases from test where test_result='positive' and test_date between '05-SEP-2021' and '10-SEP-2021';


/*

Note: The data inserted in tables date ranges from 01-SEP-2021 to 30-SEP-2021 only.

*/