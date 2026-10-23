DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(20),
    email VARCHAR(100),
    address VARCHAR(255)
);

CREATE TABLE Dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_name VARCHAR(100) NOT NULL,
    breed VARCHAR(100),
    age INT,
    emergency_contact_name VARCHAR(100),
    emergency_contact_phone VARCHAR(20),
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    start_time TIME NOT NULL,
    duration_time INT,
    price DECIMAL(8,2),
    FOREIGN KEY (dog_id) REFERENCES Dogs(dog_id)
);

CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    amount DECIMAL(8,2) NOT NULL,
    payment_date DATE,
    payment_method VARCHAR(50),
    payment_status VARCHAR(50),
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);