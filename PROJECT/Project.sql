CREATE DATABASE healthcare;

USE healthcare;

-- Create table for patients
CREATE TABLE patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
    gender ENUM('Male', 'Female', 'Other'),
    weight DECIMAL(5, 2),
    height DECIMAL(5, 2)
);

-- Create table for medical records
CREATE TABLE medical_records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    diagnosis VARCHAR(255),
    treatment VARCHAR(255),
    date_of_visit DATE,
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);

-- Create table for health metrics
CREATE TABLE health_metrics (
    metric_id INT AUTO_INCREMENT PRIMARY KEY,
    patient_id INT,
    date_of_record DATE,
    blood_pressure VARCHAR(15),
    heart_rate INT,
    cholesterol DECIMAL(5, 2),
    FOREIGN KEY (patient_id) REFERENCES patients(patient_id)
);
-- Insert patient data
INSERT INTO patients (name, age, gender, weight, height) VALUES
('John Doe', 45, 'Male', 78.5, 175),
('Jane Smith', 37, 'Female', 65.2, 165),
('Alice Brown', 50, 'Female', 72.3, 160);

-- Insert medical records
INSERT INTO medical_records (patient_id, diagnosis, treatment, date_of_visit) VALUES
(1, 'Hypertension', 'Medication A', '2024-01-15'),
(2, 'Diabetes', 'Insulin Therapy', '2024-02-20'),
(3, 'High Cholesterol', 'Medication B', '2024-03-10');

-- Insert health metrics data
INSERT INTO health_metrics (patient_id, date_of_record, blood_pressure, heart_rate, cholesterol) VALUES
(1, '2024-10-01', '130/85', 78, 5.6),
(2, '2024-10-02', '120/80', 70, 6.2),
(3, '2024-10-03', '140/90', 85, 7.1);

-- Insert 50 new patient records
INSERT INTO patients (name, age, gender, weight, height) VALUES
('Patient 4', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 5', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 6', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 7', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 8', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 9', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 10', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 11', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 12', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 13', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 14', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 15', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 16', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 17', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 18', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 19', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 20', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 21', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 22', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 23', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 24', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 25', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 26', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 27', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 28', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 29', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 30', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 31', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 32', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 33', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 34', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 35', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2)),
('Patient 36', 30 + FLOOR(RAND() * 30), IF(RAND() < 0.5, 'Male', 'Female'), ROUND(60 + RAND() * 40, 2), ROUND(150 + RAND() * 30, 2));

-- Insert medical records for patients 4 to 36
INSERT INTO medical_records (patient_id, diagnosis, treatment, date_of_visit) VALUES
(4, 'Hypertension', 'Medication A', '2024-10-01'),
(5, 'Diabetes', 'Insulin Therapy', '2024-10-02'),
(6, 'High Cholesterol', 'Medication B', '2024-10-03'),
(7, 'Obesity', 'Diet Plan', '2024-10-04'),
(8, 'Anemia', 'Iron Supplements', '2024-10-05'),
(9, 'Asthma', 'Inhaler', '2024-10-06'),
(10, 'Depression', 'Counseling', '2024-10-07'),
(11, 'Anxiety', 'Therapy', '2024-10-08'),
(12, 'Migraine', 'Pain Relief', '2024-10-09'),
(13, 'Thyroid Issues', 'Medication C', '2024-10-10'),
(14, 'Back Pain', 'Physiotherapy', '2024-10-11'),
(15, 'High Blood Pressure', 'Medication D', '2024-10-12'),
(16, 'Allergies', 'Antihistamines', '2024-10-13'),
(17, 'Skin Infection', 'Antibiotics', '2024-10-14'),
(18, 'Heart Disease', 'Cardiac Medication', '2024-10-15'),
(19, 'Kidney Stones', 'Medication E', '2024-10-16'),
(20, 'Gout', 'Pain Management', '2024-10-17'),
(21, 'Chronic Fatigue', 'Lifestyle Changes', '2024-10-18'),
(22, 'Acid Reflux', 'Dietary Changes', '2024-10-19'),
(23, 'Weight Management', 'Personal Trainer', '2024-10-20'),
(24, 'Post-Traumatic Stress Disorder', 'Therapy', '2024-10-21'),
(25, 'Seasonal Affective Disorder', 'Light Therapy', '2024-10-22'),
(26, 'Osteoporosis', 'Calcium Supplements', '2024-10-23'),
(27, 'COPD', 'Bronchodilators', '2024-10-24'),
(28, 'Pneumonia', 'Antibiotics', '2024-10-25'),
(29, 'Liver Disease', 'Diet Plan', '2024-10-26'),
(30, 'Pancreatitis', 'Dietary Management', '2024-10-27'),
(31, 'Cirrhosis', 'Medication F', '2024-10-28'),
(32, 'Epilepsy', 'Anticonvulsants', '2024-10-29'),
(33, 'Multiple Sclerosis', 'Therapy', '2024-10-30'),
(34, 'Parkinson Disease', 'Medication G', '2024-10-31'),
(35, 'Alzheimer Disease', 'Supportive Care', '2024-11-01'),
(36, 'Chronic Pain', 'Pain Management', '2024-11-02');

-- Insert health metrics for patients 4 to 36
INSERT INTO health_metrics (patient_id, date_of_record, blood_pressure, heart_rate, cholesterol) VALUES
(4, '2024-10-01', '135/88', 80, 5.8),
(5, '2024-10-02', '130/85', 75, 6.5),
(6, '2024-10-03', '145/92', 85, 7.2),
(7, '2024-10-04', '150/95', 78, 6.0),
(8, '2024-10-05', '120/80', 72, 5.3),
(9, '2024-10-06', '130/83', 74, 5.9),
(10, '2024-10-07', '125/82', 68, 5.7),
(11, '2024-10-08', '140/90', 81, 6.8),
(12, '2024-10-09', '135/88', 77, 6.1),
(13, '2024-10-10', '120/78', 70, 5.5),
(14, '2024-10-11', '145/92', 82, 6.2),
(15, '2024-10-12', '155/100', 90, 7.0),
(16, '2024-10-13', '110/70', 66, 4.9),
(17, '2024-10-14', '130/85', 76, 6.6),
(18, '2024-10-15', '120/78', 72, 5.1),
(19, '2024-10-16', '140/88', 79, 6.0),
(20, '2024-10-17', '115/75', 65, 5.4),
(21, '2024-10-18', '130/84', 78, 6.3),
(22, '2024-10-19', '135/89', 80, 5.8),
(23, '2024-10-20', '120/80', 70, 5.2),
(24, '2024-10-21', '145/93', 84, 6.4),
(25, '2024-10-22', '130/87', 77, 6.1),
(26, '2024-10-23', '120/76', 73, 5.6),
(27, '2024-10-24', '140/90', 81, 6.5),
(28, '2024-10-25', '110/70', 67, 4.7),
(29, '2024-10-26', '150/95', 85, 6.9),
(30, '2024-10-27', '125/80', 74, 5.9),
(31, '2024-10-28', '135/88', 79, 6.3),
(32, '2024-10-29', '140/89', 81, 6.6),
(33, '2024-10-30', '120/77', 70, 5.5),
(34, '2024-10-31', '145/92', 82, 6.8),
(35, '2024-11-01', '130/85', 75, 5.4),
(36, '2024-11-02', '150/96', 88, 7.1);
select * from patients;
select * from medical_records;
select * from health_metrics;
