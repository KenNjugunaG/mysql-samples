-- select database to query
USE hospital_db;

-- question 1.1 Write a query to retrieve the first_name, last_name and date_of_birth of all patients.
SELECT first_name, last_name, date_of_birth 
FROM patients;

-- question 1.2 Write a query to retrieve the provider_id, first_name and provider_specialty from the providers table.
SELECT provider_id, first_name, provider_specialty 
FROM providers;

-- question 2.1 Write a query to retrieve all patients whose first names start with "Ab".
SELECT * 
FROM providers 
WHERE provider_specialty 
LIKE '%y';

-- question 3.1 Write a query to find all patients born after 1st January 1980.
SELECT * 
FROM patients 
WHERE date_of_birth > '1980-01-01';

-- question 3.1 Write a query to retrieve visits where the acuity level is 2 or higher.
SELECT * 
FROM ed_visits 
WHERE acuity >= 2;

-- question 4.1 Write a query to find patients who speak Spanish. 
SELECT * 
FROM patients 
WHERE language='spanish';

-- question 4.2 Write a query to retrieve visits where the reason is "Migraine" and the disposition is "Admitted".
SELECT * 
FROM ed_visits 
WHERE reason_for_visit = 'Migraine' 
AND ed_disposition = 'Admitted';

-- question 4.2 Write a query to find patients born between 1975 and 1980.
SELECT * 
FROM patients 
WHERE date_of_birth 
BETWEEN '1975-01-01' AND '1980-12-31';

-- question 5.1 Write a query to retrieve patient names and sort them in alphabetical order by last name.
SELECT first_name, last_name 
FROM patients 
ORDER BY last_name ASC;

-- question 5.2 Write a query to list all visits sorted by the date of the visit, starting from the most recent.
SELECT * 
FROM visits 
ORDER BY date_of_visit DESC;

-- question 6.1. Write a query to retrieve all admissions where the primary diagnosis is "Stroke" and the discharge disposition is "Home".
SELECT admissions.*
FROM admissions
JOIN discharges ON admissions.admission_id = discharges.admission_id
WHERE admissions.primary_diagnosis = 'Stroke'
AND discharges.discharge_disposition = 'Home';

-- question 6.2 Write a query to find providers who joined after 1995 and specialize in either Pediatrics or Cardiology.
SELECT *
FROM providers
WHERE date_joined > '1995-12-31'
AND (provider_specialty = 'Pediatrics' OR provider_specialty = 'Cardiology');

-- Bonus Challenge (optional) Write a query that lists all discharges where the patient was discharged home and the discharge date is within the first week of March 2018.
SELECT *
FROM discharges
WHERE discharge_disposition = 'Home'
AND discharge_date BETWEEN '2018-03-01' AND '2018-03-07';
