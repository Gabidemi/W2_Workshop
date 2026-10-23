USE lana_dog_walking;

INSERT INTO Customers (customer_id, customer_name, phone_number, email, address)
VALUES
    (1,  'Alex',  '555-555-551', 'Alex@example.com',  '771 S Candy street, NJ 07001'),
    (2,  'Ola',   '555-555-552', 'Ola@example.com',   '772 S Candy street, NJ 07002'),
    (3,  'Lora',  '555-555-553', 'Lora@example.com',  '773 S Candy street, NJ 07003'),
    (4,  'Jary',  '555-555-554', 'Jary@example.com',  '774 S Candy street, NJ 07004'),
    (5,  'Oscar', '555-555-555', 'Oscar@example.com', '775 S Candy street, NJ 07005'),
    (6,  'Lisa',  '555-555-556', 'Lisa@example.com',  '776 S Candy street, NJ 07006'),
    (7,  'May',   '555-555-557', 'May@example.com',   '777 S Candy street, NJ 07007'),
    (8,  'Noah',  '555-555-558', 'Noah@example.com',  '778 S Candy street, NJ 07008'),
    (9,  'Avie',  '555-555-559', 'Zara@example.com',  '779 S Candy street, NJ 07009'),
    (10, 'Ben',   '555-555-560', 'Ben@example.com',   '780 S Candy street, NJ 07010'),
    (11, 'Nina',  '555-555-561', 'Nina@example.com',  '781 S Candy street, NJ 07011');
    
    INSERT INTO Dogs (dog_id, dog_name, breed, age_months, emergency_contact_name, emergency_contact_phone, customer_id)
VALUES
    (1,  'Milou',   'Labrador Retriever', 10, 'Alex',  '555-555-551', 1),
    (2,  'Rex',     'German Shepherd',    60, 'Ola',   '555-555-552', 2),
    (3,  'White',   'Chihuahua',          36, 'Lora',  '555-555-553', 3),
    (4,  'Brwon',   'Poodle',             26, 'Jary',  '555-555-554', 4),
    (5,  'Police',  'Labrador Retriever', 32, 'Oscar', '555-555-555', 5),
    (6,  'Felix',   'Poodle',             45, 'Lisa',  '555-555-556', 6),
    (7,  'Bella',   'Golden Retriever',   8,  'May',   '555-555-557', 7),
    (8,  'Charlie', 'Beagle',             24, 'Noah',  '555-555-558', 8),
    (9,  'Luna',    'Bulldog',            72, 'Zara',  '555-555-559', 9),
    (10, 'Coco',    'Dachshund',          14, 'Ben',   '555-555-560', 10),
    (11, 'Buddy',   'Boxer',              18, 'Nina',  '555-555-561', 11);
    
    INSERT INTO Appointments (appointment_id, dog_id, appointment_date, start_time, duration_time_min, price)
VALUES
    (1,  1,  '2026-08-22', '08:00:00', 180, 90.00),
    (2,  2,  '2026-09-25', '08:00:00', 120, 60.00),
    (3,  3,  '2026-09-29', '08:00:00', 120, 60.00),
    (4,  4,  '2026-10-21', '08:00:00', 120, 60.00),
    (5,  5,  '2026-10-29', '08:00:00', 120, 60.00),
    (6,  6,  '2026-10-29', '08:00:00', 120, 60.00),
    (7,  7,  '2026-10-30', '08:00:00', 120, 60.00),
    (8,  8,  '2026-11-03', '08:00:00', 180, 90.00),
    (9,  9,  '2026-11-05', '08:00:00', 120, 60.00),
    (10, 10, '2026-11-10', '08:00:00', 60,  30.00),
    (11, 11, '2026-11-12', '08:00:00', 120, 60.00);
    
    INSERT INTO Payments (payment_id, appointment_id, amount, payment_date, payment_method, payment_status)
VALUES
    (1,  1,  90.00, '2026-08-30', 'cash',  'paid'),
    (2,  2,  60.00, '2026-09-30', 'card',  'refunded'),
    (3,  3,  60.00, '2026-09-30', 'card',  'paid'),
    (4,  4,  60.00, '2026-10-30', 'zelle', 'pending'),
    (5,  5,  60.00, '2026-10-30', 'card',  'pending'),
    (6,  6,  60.00, '2026-10-30', 'other', 'pending'),
    (7,  7,  60.00, '2026-11-30', 'venmo', 'pending'),
    (8,  8,  90.00, '2026-11-30', 'card',  'pending'),
    (9,  9,  60.00, '2026-11-30', 'cash',  'pending'),
    (10, 10, 30.00, '2026-11-30', 'venmo', 'pending'),
    (11, 11, 60.00, '2026-11-30', 'zelle', 'pending');
    
    
SELECT * FROM Customers;
SELECT * FROM Dogs;
SELECT * FROM Appointments;
SELECT * FROM Payments;
    