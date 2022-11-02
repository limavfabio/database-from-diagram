CREATE TABLE patients (
id INT PRIMARY KEY,
name VARCHAR,
date_of_birth DATE
);

CREATE TABLE medical_histories (
id INT PRIMARY KEY,
admitted_at TIMESTAMP,
patient_id INT NULL REFERENCES patients(id) INT,
status VARCHAR
);

CREATE TABLE invoices (
id INT PRIMARY KEY,
total_amount DECIMAL,
generated_at TIMESTAMP,
payed_at TIMESTAMP,
medical_history_id INT NULL REFERENCES medical_histories(id)
);

CREATE TABLE invoice_items(
id INT PRIMARY KEY,
unit_price DECIMAL,
quantity INT,
total_price DECIMAL,
invoice_id INT NULL REFERENCES invoices(id),
treatment_id INT NULL REFERENCES treatments(id)
);

CREATE TABLE treatments (
id INT PRIMARY KEY,
type VARCHAR,
name VARCHAR
);
--create JOIN table for many to many relationship
CREATE TABLE medical_histories_treatments (
    medical_history_id INT REFERENCES medical_histories(id),
    treatment_id INT REFERENCES treatments(id)
);

-- Create indexes for improved perfomance
CREATE INDEX medical_histories_patient_id_asc ON medical_histories(patient_id ASC);
CREATE INDEX treatments_id ON treatments(id);
CREATE INDEX invoice_items_id ON invoice_items(id);
CREATE INDEX invoices_id ON invoices(id);
CREATE INDEX medical_histories_id ON medical_histories(id);
CREATE INDEX patients_id ON patients(id);
CREATE INDEX medical_histories_treatments_medical_history_id ON medical_histories_treatments(medical_history_id);
CREATE INDEX medical_histories_treatments_treatment_id ON medical_histories_treatments(treatment_id);
