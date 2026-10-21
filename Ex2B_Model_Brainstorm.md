# Requirements and Conceptual Model.

Names: Djeneba, Gbolahan, Richard



# End User

The end user is Lana, because she will be using the system to manage her dog-walking business.

# Requirements

* Add and update customer information.
* Keep records of the dogs she walks.
* Schedule dog-walking appointments.
* Check which dogs need to be walked each day.
* Track payments from customers.
* Keep emergency contact information for each dog.

# Categories of Data

## Customers

* Customer ID
* Customer Name
* Phone Number
* Email
* Address

# Dogs

* Dog ID
* Dog Name
* Dog Breed
* Dog Age
* Customer ID

# Appointments

* Appointment ID
* Dog ID
* Date
* Time
* Status

# Payments

* Payment ID
* Appointment ID
* Amount
* Date
* Payment Method



\#Logical Model

# Database Design

## a) Main Entities

1. **Customers**
2. **Dogs**
3. **Appointments**
4. **Payments**
5. **Emergency\_Contacts**

Emergency contacts were listed in our requirements, so they get their own table.

## b) Attributes

|Table|Columns|
|-|-|
|**Customers**|customer\_id (PK), customer\_name, phone\_number, email, address|
|**Dogs**|dog\_id (PK), dog\_name, breed, age, health\_notes, vet\_name, customer\_id (FK)|
|**Appointments**|appointment\_id (PK), appointment\_date, start\_time, duration\_minutes, price, status, notes|
|**Payments**|payment\_id (PK), appointment\_id (FK), amount, payment\_date, payment\_method, payment\_status|
|**Emergency\_Contacts**|contact\_id (PK), contact\_name, phone\_number, relationship, dog\_id (FK)|

**Example record (Appointments):** 12, 2026-11-03, 08:00, 30, 20.00, "scheduled", "key under the mat"

## c) Relationships

* **Customers → Dogs:** one customer can have many dogs, and each dog belongs to one customer (one-to-many).
* **Dogs → Emergency\_Contacts:** one dog can have many emergency contacts (one-to-many).
* **Appointments → Payments:** one appointment usually has one payment, but could have several, for example a deposit plus a final payment (one-to-many).
* **Dogs ↔ Appointments:** many-to-many (see part d).

Examples of information that must be reassembled:

* *Which dogs need to be walked tomorrow, with their emergency contact?* Requires Appointments, Dogs and Emergency\_Contacts.
* *How much does each customer owe?* Requires Customers, Dogs, Appointments and Payments.

## d) Many-to-Many Relationships

**Dogs ↔ Appointments** is many-to-many. A dog is walked many times, and a single appointment (for example a group walk) can include several dogs. This needs a resolving (junction) table:

**Appointment\_Dogs**

|Column|Key|
|-|-|
|appointment\_id|PK (composite), FK → Appointments|
|dog\_id|PK (composite), FK → Dogs|

Optional: if one emergency contact can serve several dogs (for example siblings), Dogs ↔ Emergency\_Contacts would also be many-to-many and would need its own junction table.

