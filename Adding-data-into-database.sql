USE Hospital-database;

-- This SQL script inserts sample data into the Doctors, Patients, Treatments, and Admission tables
-- It includes two doctors, two patients, two treatments, and two admissions
-- The data is inserted using the INSERT INTO statement
-- Each INSERT statement specifies the table name and the values to be inserted
-- The values are enclosed in parentheses and separated by commas

-- Insert Doctors
INSERT INTO Doctors (first_name, field_area, email, phone)
VALUES 
('Alice', 'Cardiology', 'alice@hospital.com', '0700111222'),
('Bob', 'Neurology', 'bob@hospital.com', '0700333444');

-- Insert Patients
INSERT INTO Patients (first_name, admission_date, email, phone)
VALUES 
('John', '2025-05-10', 'john@example.com', '0711223344'),
('Mary', '2025-05-11', 'mary@example.com', '0711445566');

-- Insert Treatments
INSERT INTO Treatments (type_of_treatment, doctor_recommendation)
VALUES 
('Physical Therapy', 'Recommended 3 sessions per week.'),
('Heart Medication', 'Daily dose required after meals.');

-- Insert Admissions
INSERT INTO Admission (patient_id, doctor_id, admission_date, description_for_admission)
VALUES 
(1, 1, '2025-05-10 09:00:00', 'Chest pain and high blood pressure.'),
(2, 2, '2025-05-11 14:30:00', 'Migraine and dizziness.');
