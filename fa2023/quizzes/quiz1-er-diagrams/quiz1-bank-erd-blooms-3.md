Quiz title: Quiz1 - Bank - ER Models - Blooms 3 (Apply)
Quiz description: This practice quiz focuses on entity-relation models and diagrams. 

    An entity-relationship (ER) model is a conceptual data model used in the field of database design to represent the structure of a database. It focuses on describing the entities (objects, concepts, or things) in a domain, the relationships between those entities, and the attributes (properties or characteristics) associated with the entities. The ER model is commonly used to visualize and understand the high-level organization of data within a system before it is implemented in a database management system.

    Bloom’s Taxonomy, revised in 2001, categorizes six levels of learning from lower- to higher-level thinking skills: Remember, Understand, Apply, Analyze, Evaluate, and Create. Ideally, learning outcomes, class activities, and assessments map to these ascending levels throughout a class or course. Instructors can develop or select questions that assess different levels of cognition, keeping in mind that MC questions at the Create level may prove more challenging to develop.


21. If you have two entities "Book" and "Author", and each book can be written by multiple authors, what type of relationship exists between these entities?
a) One-to-one
b) One-to-many
c) Many-to-one
*d) Many-to-many

22. Given an entity "Student" with attributes 'ID', 'Name', and 'DOB', which attribute is most likely to be the primary key?
*a) ID
b) Name
c) DOB
d) None of the above

23. In a university database, the entity "Course" is related to the entity "Professor". If each course must be taught by exactly one professor, what kind of cardinality is this?
a) 0..1
*b) 1..1
c) 0..n
d) 1..n

24. If an attribute "Address" is composed of "Street", "City", and "ZipCode", what kind of attribute is "Address"?
a) Multivalued
b) Simple
c) Derived
*d) Composite

25. You are creating an ER diagram for a library. You have entities for "Book" and "Member". Which additional entity might you include to track which books are borrowed by members?
a) Inventory
*b) Transaction
c) Category
d) Library

26. Given a "Customer" and "Order" entity, if an order must always belong to a customer, this represents which kind of participation constraint?
*a) Total participation
b) Partial participation
c) Optional participation
d) Zero participation

27. Which attribute would be a good candidate for a foreign key in a "Sales" table that links to a "Customer" table?
a) SalesID
b) CustomerName
*c) CustomerID
d) Amount

28. In a "Hospital" entity, you have attributes "Name", "Address", and "NumberOfBeds". What might be a derived attribute here?
a) Name
b) Address
*c) BedOccupancyRate
d) NumberOfBeds

29. In a music streaming service database, how might you represent that a song can belong to multiple playlists?
a) Using a ternary relationship
*b) Using a linking entity between Song and Playlist
c) Making Playlist an attribute of Song
d) Making Song a multivalued attribute of Playlist

30. In an airline reservation system, what kind of relationship exists between "Passenger" and "Seat" if each passenger can reserve multiple seats but each seat can only be reserved by one passenger?
a) One-to-one
*b) One-to-many
c) Many-to-many
d) Many-to-one

31. Which of the following would not be a good primary key for a "Car" entity?
a) CarRegistrationNumber
b) CarModel
c) VIN (Vehicle Identification Number)
*d) CarColor

32. What is the role of an associative entity?
a) To store attributes
b) To resolve a ternary relationship
*c) To resolve a many-to-many relationship
d) To enforce constraints

33. What kind of attribute is "Age" if it can be derived from "Date of Birth"?
a) Simple
b) Composite
*c) Derived
d) Multivalued

34. How can a "many-to-many" relationship be represented in a database table?
a) Using a foreign key
*b) Using a linking table
c) Using a composite key
d) It can't be represented

35. If the attribute "Phone Number" in an "Employee" entity can have multiple values, what kind of attribute is it?
a) Simple
b) Derived
c) Composite
*d) Multivalued

36. If you have entities "Manufacturer" and "Product" and each product is manufactured by exactly one manufacturer, how should you model this relationship?
*a) One-to-many relationship from Manufacturer to Product
b) Many-to-many relationship between Manufacturer and Product
c) One-to-one relationship between Manufacturer and Product
d) Many-to-one relationship from Manufacturer to Product

37. In a banking database, an entity "Account" is related to another entity "Transaction". What type of relationship should this be?
a) One-to-one
*b) One-to-many
c) Many-to-many
d) Many-to-one

38. What should be the cardinality between a "Doctor" entity and an "Appointment" entity if each doctor can have multiple appointments but each appointment is with one specific doctor?
a) 0..1 to 1..1
b) 1..1 to 1..n
*c) 1..n to 1..1
d) 0..n to 1..1

39. If you are modeling a university database where each student can register for multiple courses and each course can have multiple students, what type of entity or table would you introduce to resolve this?
a) A derived entity
b) A weak entity
*c) An associative entity
d) A dependent entity

40. If an "Order" entity has a total price that is calculated based on the individual prices of ordered items, what kind of attribute is "Total Price"?
a) Multivalued
b) Composite
*c) Derived
d) Simple

