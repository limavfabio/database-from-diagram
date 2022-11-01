CREATE TABLE patients (
id INT PRIMARY KEY,
name VARCHAR,
date_of_birth DATE
);

CREATE TABLE medical_histories (
id INT PRIMARY KEY,
admitted_at TIMESTAMP,
patient_id INT,
status VARCHAR
);

CREATE TABLE invoices (
id INT PRIMARY KEY,
total_amount DECIMAL,
generated_at TIMESTAMP,
payed_at TIMESTAMP,
medical_history_id INT
);

CREATE TABLE invoice_items(
id INT PRIMARY KEY,
unit_price DECIMAL,
quantity INT,
total_price DECIMAL,
invoice_id INT,
treatment_id INT
);

CREATE TABLE treatments (
id INT PRIMARY KEY,
type VARCHAR,
name VARCHAR
);

-- Create index on medical_histories.patiend_id for improved perfomance
CREATE INDEX medical_histories_patient_id_asc ON medical_histories(patient_id ASC);