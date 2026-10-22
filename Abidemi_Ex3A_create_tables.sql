DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    phone_number VARCHAR(25),
    email VARCHAR(254),
    address VARCHAR(255)
);

CREATE TABLE dogs (
    dog_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_name VARCHAR(100) NOT NULL,
    breed VARCHAR(100),
    age INT,
    emergency_contact_name VARCHAR(100),
    emergency_contact_phone VARCHAR(25),
    customer_id INT NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    dog_id INT NOT NULL,
    appointment_date DATE NOT NULL,
    start_time TIME NOT NULL,
    duration_time INT NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (dog_id) REFERENCES dogs(dog_id)
);

CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    payment_date DATE,
    payment_method VARCHAR(50),
    payment_status VARCHAR(20) NOT NULL,
    FOREIGN KEY (appointment_id)
        REFERENCES appointments(appointment_id)
);