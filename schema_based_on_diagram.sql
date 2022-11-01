CREATE TABLE patients (
id INT PRIMARY KEY,
name varchar,
date_of_birth DATE
);

CREATE TABLE medical_histories (
id INT PRIMARY KEY,
admitted_at TIMESTAMP,
patient_id int,
status varchar
);

CREATE TABLE invoices (
id INT PRIMARY KEY,
total_amount DECIMAL,
generated_at timestamp,
payed_at timestamp,
medical_history_id int
);

CREATE TABLE invoice_items(
id INT PRIMARY KEY,
unit_price decimal,
quantity int,
total_price decimal,
invoice_id int,
treatment_id int
);

CREATE TABLE treatments (
id INT PRIMARY KEY,
type varchar,
name varchar
);

