DROP SCHEMA IF EXISTS lana_dog_walking;
CREATE SCHEMA lana_dog_walking;
USE lana_dog_walking;

CREATE TABLE Customers (
    customer_id   INT AUTO_INCREMENT PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    phone_number  VARCHAR(20) NOT NULL,
    email         VARCHAR(100),
    address       VARCHAR(255)
);


CREATE TABLE Dogs (
    dog_id                  INT AUTO_INCREMENT PRIMARY KEY,
    dog_name                VARCHAR(50) NOT NULL,
    breed                   VARCHAR(50),
    age                     TINYINT UNSIGNED,
    emergency_contact_name  VARCHAR(50) NOT NULL,
    emergency_contact_phone VARCHAR(20) NOT NULL,
    customer_id             INT NOT NULL,
    CONSTRAINT fk_dogs_customer
        FOREIGN KEY (customer_id) REFERENCES Customers (customer_id)
);

CREATE TABLE Appointments (
    appointment_id    INT AUTO_INCREMENT PRIMARY KEY,
    dog_id            INT NOT NULL,
    appointment_date  DATE,
    start_time        TIME,
    duration_time_min INT,
    price             DECIMAL(8,2),
    CONSTRAINT fk_appointments_dog
        FOREIGN KEY (dog_id) REFERENCES Dogs (dog_id)
);

CREATE TABLE Payments (
    payment_id     INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT NOT NULL,
    amount         DECIMAL(8,2),
    payment_date   DATE,
    payment_method ENUM('cash', 'card', 'venmo', 'zelle', 'other'),
    payment_status ENUM('pending', 'paid', 'refunded') DEFAULT 'pending',
    CONSTRAINT fk_payments_appointment
        FOREIGN KEY (appointment_id) REFERENCES Appointments (appointment_id)
);

SHOW TABLES; 