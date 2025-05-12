USE Hospital-database;
-- View all patients with their assigned doctor
-- Query to retrieve all patients with their respective doctors and admission dates
-- This query joins the Patients, Doctors, and Admission tables to get the required information
-- It selects the patient ID, patient name, doctor name, field area, and admission date
-- The JOIN operations link the tables based on the patient_id and doctor_id
-- The result will show each patient along with the doctor who admitted them and the date of admission
SELECT 
    p.patient_id,
    p.first_name AS patient_name,
    d.first_name AS doctor_name,
    d.field_area,
    a.admission_date
FROM 
    Admission a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id;
