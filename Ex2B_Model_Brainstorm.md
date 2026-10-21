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
- **Customers → Appointments:** One-to-many.
- **Appointments → Payments:** One-to-many.

# Examples of Information That Must Be Reassembled:
- **Which dogs need to be walked tomorrow, and who are their emergency contacts?** Requires Appointments and Dogs.
- **How much does each customer owe?** Requires Customers, Dogs, Appointments, and Payments.
- **Which appointments does a particular dog have?** Requires Dogs and Appointments.
- **Which dogs belong to a particular customer?** Requires Customers and Dogs.

# d) No Many to many relationships 
