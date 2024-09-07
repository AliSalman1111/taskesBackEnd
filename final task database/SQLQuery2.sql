use  compelete_database
--•	SELECT: Retrieve all columns from the Doctor table.
select * from Doctor
--•	ORDER BY: List patients in the Patient table in ascending order of their ages.
select * from patients order by age asc
--•	OFFSET FETCH: Retrieve the first 10 patients from the Patient table, starting from the 5th record.
SELECT * 
FROM Patients
ORDER BY urNum 
OFFSET 5 ROWS 
FETCH NEXT 10 ROWS ONLY
--•	SELECT TOP: Retrieve the top 5 doctors from the Doctor table.
SELECT TOP 5 * 
FROM Doctor
ORDER BY id;
--•	SELECT DISTINCT: Get a list of unique address from the Patient table.
select  DISTINCT address from Patients
--•	WHERE: Retrieve patients from the Patient table who are aged 25.
select * from patients where age=25
--•	NULL: Retrieve patients from the Patient table whose email is not provided.
select * from patients where email  is not null
--•	AND: Retrieve doctors from the Doctor table who have experience greater than 5 years and specialize in 'Cardiology'.
select * from Doctor where years >5 and speciality ='Cardiology'
--•	IN: Retrieve doctors from the Doctor table whose speciality is either 'Dermatology' or 'Oncology'.
select * from Doctor where speciality in('Dermatology','Oncology') ORDER BY id
--•	BETWEEN: Retrieve patients from the Patient table whose ages are between 18 and 30.
select * from patients where age between 18 and 30
--•	LIKE: Retrieve doctors from the Doctor table whose names start with 'Dr.'.
select * from Doctor where name like 'Dr%'
--•	Column & Table Aliases: Select the name and email of doctors, aliasing them as 'DoctorName' and 'DoctorEmail'.
SELECT name AS DoctorName, email AS DoctorEmail
FROM Doctor
--•	Joins: Retrieve all prescriptions with corresponding patient names.
SELECT p.id, p.quntity , pat.name 
FROM precsription p
JOIN patients pat ON p.urNum = pat.urNum
--•	GROUP BY: Retrieve the count of patients grouped by their cities.
select address ,count(*) from patients group by address
--•	HAVING: Retrieve cities with more than 3 patients.
select address ,count(*) from patients group by address HAVING COUNT(*) > 3
--•	UNION: Retrieve a combined list of doctors and patients. (Search)
SELECT name, email 
FROM Doctor
UNION
SELECT name, email 
FROM patients
--•	Common Table Expression (CTE): Retrieve patients along with their doctors using a CTE.

--•	INSERT: Insert a new doctor into the Doctor table.
INSERT INTO Doctor (id, name, email,speciality )
VALUES (1, 'ali', '01127900731@gmail', 'Cardiology')
--•	INSERT Multiple Rows: Insert multiple patients into the Patient table.
INSERT INTO patients (urNum, name, email,address )
VALUES
    (1, 'ali', '01127900731@gmail', 'assuit'),
    (2, 'eman', '01127900731@gmail', 'assuit'),
    (3, 'mai', '01127900731@gmailm', 'assuit'),
    (4, 'ahmed', '01127900731@gmail', 'assuit')
--•	UPDATE: Update the phone number of a doctor.
UPDATE Doctor
SET phone = '01127900731'
WHERE id = 1
--•	UPDATE JOIN: Update the city of patients who have a prescription from a specific doctor.
UPDATE p 
SET p.address = 'assuitss'
FROM patients p
JOIN precsription pr ON p.urNum = pr.urNum
JOIN Doctor d ON pr.idDoctor = d.id
WHERE d.id = 1
--•	DELETE: Delete a patient from the Patient table.
DELETE FROM patients
WHERE urNum = 1; 
--•	Transaction: Insert a new doctor and a patient, ensuring both operations succeed or fail together.

--•	View: Create a view that combines patient and doctor information for easy access.

--•	Index: Create an index on the 'phone' column of the Patient table to improve search performance.

--•	Backup: Perform a backup of the entire database to ensure data safety.
