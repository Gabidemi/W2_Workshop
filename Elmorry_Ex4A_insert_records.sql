USE lana_dog_walking;

INSERT INTO Customers (customer_name, phone_number, email, address) VALUES
('Maria Lopez', '201-555-0142', 'maria.lopez@email.com', '45 Oak Street, Secaucus, NJ'),
('James Carter', '201-555-0178', 'james.carter@email.com', '12 Maple Avenue, Jersey City, NJ'),
('Aisha Patel', '551-555-0123', 'aisha.patel@email.com', '88 Park Lane, Hoboken, NJ'),
('Daniel Kim', '973-555-0166', 'daniel.kim@email.com', '301 Broad Street, Newark, NJ'),
('Sophia Rossi', '201-555-0155', 'sophia.rossi@email.com', '7 Willow Court, Bayonne, NJ'),
('Marcus Johnson', '551-555-0190', 'marcus.johnson@email.com', '215 River Road, Weehawken, NJ'),
('Emily Chen', '201-555-0104', 'emily.chen@email.com', '64 Hudson Street, Hoboken, NJ'),
('Omar Hassan', '973-555-0137', 'omar.hassan@email.com', '19 Elm Street, Kearny, NJ'),
('Lauren Murphy', '201-555-0188', 'lauren.murphy@email.com', '53 Grove Street, Jersey City, NJ'),
('Carlos Rivera', '551-555-0171', 'carlos.rivera@email.com', '402 Central Avenue, Union City, NJ'),
('Hannah Brooks', '201-555-0119', 'hannah.brooks@email.com', '28 Palisade Avenue, North Bergen, NJ');

INSERT INTO Dogs (dog_name, breed, age, emergency_contact_name, emergency_contact_phone, customer_id) VALUES
('Buddy', 'Golden Retriever', 4, 'Carlos Lopez', '201-555-0199', 1),
('Luna', 'Labrador Retriever', 3, 'Rebecca Carter', '201-555-0211', 2),
('Max', 'German Shepherd', 5, 'Neha Patel', '551-555-0234', 3),
('Bella', 'Beagle', 2, 'Grace Kim', '973-555-0245', 4),
('Charlie', 'French Bulldog', 6, 'Marco Rossi', '201-555-0256', 5),
('Daisy', 'Poodle', 7, 'Tanya Johnson', '551-555-0267', 6),
('Rocky', 'Boxer', 4, 'David Chen', '201-555-0278', 7),
('Coco', 'Shih Tzu', 3, 'Layla Hassan', '973-555-0289', 8),
('Milo', 'Siberian Husky', 2, 'Kevin Murphy', '201-555-0290', 9),
('Sadie', 'Dachshund', 8, 'Rebecca Carter', '201-555-0211', 2),
('Teddy', 'Pug', 5, 'Marco Rossi', '201-555-0256', 5);

INSERT INTO Appointments (dog_id, appointment_date, start_time, duration_time, price) VALUES
(1, '2026-10-26', '09:00:00', 30, 25.00),
(2, '2026-10-26', '10:00:00', 45, 35.00),
(3, '2026-10-26', '11:30:00', 60, 45.00),
(4, '2026-10-27', '08:30:00', 30, 25.00),
(5, '2026-10-27', '12:00:00', 45, 35.00),
(6, '2026-10-27', '15:00:00', 30, 25.00),
(7, '2026-10-28', '09:30:00', 60, 45.00),
(8, '2026-10-28', '13:00:00', 30, 25.00),
(1, '2026-10-29', '09:00:00', 30, 25.00),
(9, '2026-10-29', '14:30:00', 45, 35.00),
(2, '2026-10-30', '10:00:00', 45, 35.00);

INSERT INTO Payments (appointment_id, amount, payment_date, payment_method, payment_status) VALUES
(1, 25.00, '2026-10-26', 'Venmo', 'Paid'),
(2, 35.00, '2026-10-26', 'Cash', 'Paid'),
(3, 45.00, '2026-10-26', 'Zelle', 'Paid'),
(4, 25.00, '2026-10-27', 'Credit Card', 'Paid'),
(5, 35.00, '2026-10-27', 'Venmo', 'Paid'),
(6, 25.00, '2026-10-27', 'Cash', 'Paid'),
(7, 45.00, '2026-10-28', 'Zelle', 'Paid'),
(8, 25.00, '2026-10-28', 'Credit Card', 'Paid'),
(9, 25.00, NULL, 'Venmo', 'Pending'),
(10, 35.00, NULL, 'Cash', 'Pending'),
(11, 35.00, NULL, 'Zelle', 'Pending');