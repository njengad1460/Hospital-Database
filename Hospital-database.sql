-- CREATE DATABASE Hospital;
USE Hospital;

CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30),
    second_name VARCHAR(30) NOT NULL,
    field_area VARCHAR(50),
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(16) UNIQUE NOT NULL
);

CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    second_name VARCHAR(30) NOT NULL,
    admission_date DATE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    phone VARCHAR(20)
);

CREATE TABLE Treatments (
    treatment_id INT PRIMARY KEY AUTO_INCREMENT,
    type_of_treatment VARCHAR(150) NOT NULL,
    doctor_recommendation TEXT
);

CREATE TABLE Admission (
    admission_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    admission_date DATETIME NOT NULL,
    description_for_admission TEXT,
    CONSTRAINT frk_patient FOREIGN KEY (patient_id)
        REFERENCES Patients (patient_id),
    CONSTRAINT frk_doctor FOREIGN KEY (doctor_id)
        REFERENCES Doctors (doctor_id)
);




















