# Requirements and Conceptual Model

**Names:** Djeneba, Gbolahan, Richard

# End User
The end user is Lana, because she will be using the system to manage her dog-walking business.

# Requirements
- Add and update customer information.
- Keep records of the dogs she walks.
- Schedule dog-walking appointments.
- Check which dogs need to be walked each day.
- Track payments from customers.
- Keep emergency contact information for each dog.

# Categories of Data
# Customers
- Customer ID
- Customer Name
- Phone Number
- Email
- Address

# Dogs
- Dog ID
- Dog Name
- Dog Breed
- Dog Age
- Emergency Contact Name
- Emergency Contact Phone Number
- Customer ID

# Appointments
- Appointment ID
- Customer ID
- Dog ID
- Date
- Time
- Duration
- Price

# Payments
- Payment ID
- Appointment ID
- Amount
- Date
- Payment Method
- Payment Status

# Logical Model

# a) Main Entities: 
1. **Customers**
2. **Dogs**
3. **Appointments**
4. **Payments**

# b) Attributes: 
| Table | Columns |
|---|---|
| **Customers** | customer_id (PK), customer_name, phone_number, email, address |
| **Dogs** | dog_id (PK), dog_name, breed, age, emergency_contact_name, emergency_contact_phone, customer_id (FK) |
| **Appointments** | appointment_id (PK), dog_id (FK), appointment_date, start_time, duration_time, price |
| **Payments** | payment_id (PK), appointment_id (FK), amount, payment_date, payment_method, payment_status |

# c) Relationships:
- **Customers → Dogs:** One-to-many.
- **Dog → Appointments:** One-to-many.
- **Appointments → Payments:** One-to-many.

# Examples of Information That Must Be Reassembled:
- **Which dogs need to be walked tomorrow, and who are their emergency contacts?** Requires Appointments and Dogs.
- **How much does each customer owe?** Requires Customers, Dogs, Appointments, and Payments.
- **Which appointments does a particular dog have?** Requires Dogs and Appointments.
- **Which dogs belong to a particular customer?** Requires Customers and Dogs.

# d) No Many to many relationships 

# Step 4: Comparing Our Diagrams

## a) Similarities
- All three diagrams show the same 4 tables: Customers, Dogs, Appointments, Payments.
- Every table has the same columns, and the same primary keys (PK) and foreign keys (FK): customer_id in Dogs, dog_id in Appointments, appointment_id in Payments.
- All three show the same relationships: Customers to Dogs to Appointments to Payments, each one-to-many. There are no many-to-many relationships, so no resolving table is needed.

## b) Differences
- Layout: Gbolahan's is one tall vertical chain. Djeneba's and Richard's are a 2x2 grid.
- How relationships are drawn: Gbolahan used arrows with the text "1 to many". Djeneba used plain lines with the text "one to many". Richard used crow's foot symbols (bar = one, fork = many) with labels: owns, has, receives.
- Style: different colors and fonts. Richard's also has a key at the bottom explaining PK and FK.

## Pros and Cons
- Vertical chain: Simple and follows the order of the data, but it is tall and narrow, so it is harder to read on one screen.
- 2x2 grid with plain lines: Fits on one screen and is easy to read, but plain lines do not show which side is "one" and which is "many" without the text.
- Crow's foot with labels: Standard ERD notation that shows one vs many exactly, but it takes more knowledge to read.
