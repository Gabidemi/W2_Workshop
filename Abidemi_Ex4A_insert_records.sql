USE lana_dog_walking;

INSERT INTO customers
    (customer_name, phone_number, email, address)
VALUES
    ('Sarah', '6315550101', 'sarah@example.com', '12 Maple Street'),
    ('Michael', '6315550102', 'michael@example.com', '45 Oak Avenue'),
    ('Emily', '6315550103', 'emily@example.com', '78 Pine Road'),
    ('David', '6315550104', 'david@example.com', '23 Cedar Lane'),
    ('Jessica', '6315550105', 'jessica@example.com', '56 Birch Drive'),
    ('Daniel', '6315550106', 'daniel@example.com', '89 Willow Street'),
    ('Ashley', '6315550107', 'ashley@example.com', '34 Elm Avenue'),
    ('James', '6315550108', 'james@example.com', '67 Spruce Road'),
    ('Olivia', '6315550109', 'olivia@example.com', '90 Cherry Lane'),
    ('Ethan', '6315550110', 'ethan@example.com', '15 Walnut Drive');

INSERT INTO dogs
    (customer_id, dog_name, breed, age,
     emergency_contact_name, emergency_contact_phone)
VALUES
    (1, 'Buddy', 'Golden Retriever', 4, 'Emma', '6315550121'),
    (2, 'Luna', 'Labrador Retriever', 2, 'Noah', '6315550122'),
    (3, 'Max', 'Beagle', 5, 'Ava', '6315550123'),
    (4, 'Bella', 'Poodle', 3, 'Liam', '6315550124'),
    (5, 'Charlie', 'Bulldog', 6, 'Mia', '6315550125'),
    (6, 'Daisy', 'Dachshund', 2, 'Lucas', '6315550126'),
    (7, 'Rocky', 'Boxer', 4, 'Grace', '6315550127'),
    (8, 'Coco', 'Shih Tzu', 7, 'Henry', '6315550128'),
    (9, 'Milo', 'Border Collie', 1, 'Chloe', '6315550129'),
    (10, 'Ruby', 'Siberian Husky', 3, 'Oliver', '6315550130');

INSERT INTO appointments
    (dog_id, appointment_date, start_time, duration_time, price)
VALUES
    (1, '2026-10-23', '09:00:00', 30, 15.00),
    (2, '2026-10-23', '10:00:00', 60, 25.00),
    (3, '2026-10-23', '11:30:00', 30, 15.00),
    (4, '2026-10-23', '13:00:00', 45, 20.00),
    (5, '2026-10-23', '14:00:00', 60, 25.00),
    (6, '2026-10-24', '09:00:00', 30, 15.00),
    (7, '2026-10-24', '10:00:00', 45, 20.00),
    (8, '2026-10-24', '11:00:00', 60, 25.00),
    (9, '2026-10-24', '13:00:00', 30, 15.00),
    (10, '2026-10-24', '14:00:00', 45, 20.00);
    
INSERT INTO payments
    (appointment_id, amount, payment_date,
     payment_method, payment_status)
VALUES
    (1, 15.00, '2026-10-23', 'credit card', 'ACCEPTED'),
    (2, 25.00, '2026-10-23', 'cash', 'ACCEPTED'),
    (3, 15.00, '2026-10-23', 'debit card', 'ACCEPTED'),
    (4, 20.00, '2026-10-23', 'credit card', 'ACCEPTED'),
    (5, 25.00, '2026-10-23', 'cash', 'ACCEPTED'),
    (6, 15.00, '2026-10-24', 'debit card', 'ACCEPTED'),
    (7, 20.00, '2026-10-24', 'credit card', 'ACCEPTED'),
    (8, 25.00, '2026-10-24', 'cash', 'ACCEPTED'),
    (9, 15.00, '2026-10-24', 'debit card', 'ACCEPTED'),
    (10, 20.00, '2026-10-24', 'credit card', 'ACCEPTED');