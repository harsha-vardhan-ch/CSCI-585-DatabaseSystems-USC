-----------------------

All the queries are executed in  https://livesql.oracle.com/

----------------------

Question 1 :

Tables
------

Created Employee table with 27 rows
Created Meeting table with 13 rows
Created Notification table with 17 rows
Created Symptom table with 20 rows
Created Symptomdescription table with 5 rows
Created Scan table with 27 rows
Created Test table with 19 rows
Created Case table with 6 rows
Created Healthstatus table with 54 rows

Sequences
----------

Created sequence healthstat_seq for rowid values in healthstatus stable. Sequence values starts with 1.
Created sequence symptom_seq for rowid values in symptom table. Sequence values starts with 1.

==================================

Question 2:

Created a table named as symptomdescription with symptom_id as primary key, symptom_name as the description of symptom_id

1 => fever
2 => cough
3 => cold
4 => loss of taste and smell
5 => muscle or body aches

Symptom id displayed is the most self reported symptom
Symptom name displayed is the corresponding name of the most self reported symptom id.

===================================

Question 3:

floor_number is returned as SICKEST_FLOOR
Sickest floor is calculated based on status of healthstatus table.
An employee is considered as sick if the status is either sick or hospitalized.

===================================

Question 4:

The data inserted in tables ranges from sep 1th 2021 to sep 30th 2021.

====================================

Question 5:

Question I have chosen :  Find the employee id who self reported all symptoms

===================================




