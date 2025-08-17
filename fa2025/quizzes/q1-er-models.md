Quiz title: Quiz 1 - ER Models
Quiz description: This quiz focuses on entity-relation models and diagrams. 

    An entity-relationship (ER) model is a conceptual data model used in the field of database design to represent the structure of a database. It focuses on describing the entities (objects, concepts, or things) in a domain, the relationships between those entities, and the attributes (properties or characteristics) associated with the entities. The ER model is commonly used to visualize and understand the high-level organization of data within a system before it is implemented in a database management system.

    Bloom’s Taxonomy, revised in 2001, categorizes six levels of learning from lower- to higher-level thinking skills: Remember, Understand, Apply, Analyze, Evaluate, and Create. Ideally, learning outcomes, class activities, and assessments map to these ascending levels throughout a class or course. Instructors can develop or select questions that assess different levels of cognition, keeping in mind that MC questions at the Create level may prove more challenging to develop.


1. What does an entity in an ER diagram represent?
a) A relationship
*b) A table in the database
c) An attribute
d) A constraint

2. What does a diamond shape symbolize in an ER diagram?
a) Entity
b) Attribute
*c) Relationship
d) Cardinality

3. Which of the following describes the “one-to-many” relationship?
*a) One entity can be associated with many entities in another set.
b) Each entity can be associated with just one entity in another set.
c) Many entities can be associated with many entities in another set.
d) None of the above

4. What do oval shapes usually signify in an ER diagram?
*a) Attributes
b) Entities
c) Relationships
d) Constraints

5. What is a composite attribute?
*a) An attribute that can be divided into smaller sub-parts
b) An attribute that combines two or more entities
c) An attribute that cannot be divided further
d) An attribute that forms a primary key

6. In ER diagrams, what does cardinality specify?
a) The uniqueness of an entity
*b) The number of entities involved in a relationship
c) The key attributes of an entity
d) The shape of the diagram

7. What does a weak entity mean in ER modeling?
a) An entity with few attributes
*b) An entity that depends on another entity for its existence
c) An entity with no relationships
d) An entity that is optional in the diagram


8. What does a double oval represent in an ER diagram?
*a) Multivalued attribute
b) Primary key
c) Weak entity
d) Relationship


9. Which of the following describes a ternary relationship?
a) A relationship between three attributes
*b) A relationship between three entities
c) A relationship between two entities and one attribute
d) A relationship that exists for three instances


10. Which of these is NOT a type of attribute in ER modeling?
a) Multivalued
b) Derived
c) Primary
*d) Binary


11. What is the function of a linking table?
a) To link weak entities to their strong entities
*b) To resolve a many-to-many relationship
c) To store attributes
d) To enforce constraints


12. What is a derived attribute?
a) An attribute that is optional
*b) An attribute whose value can be computed from other attributes
c) An attribute that forms a primary key
d) An attribute that can have multiple values

13. What does an ERD stand for?
a) Entity Relationship Database
*b) Entity Relationship Diagram
c) Entity Relational Design
d) Entity Relationship Data

14. What is the purpose of a participation constraint in an ER diagram?
a) To specify which attributes participate in forming the primary key
*b) To specify whether the existence of an entity depends on it being related to another entity
c) To specify the number of entities in a relationship
d) To specify whether an attribute is derived or composite

15. What are connecting lines used for in an ER diagram?
a) To illustrate constraints
*b) To indicate relationships
c) To separate entities
d) To indicate primary keys

16. What is an attribute’s domain?
a) The set of tables in which it appears
b) The set of entities it relates to
*c) The set of permitted values it can take
d) The set of operations it can undergo

17. What do attributes connected with a dashed line signify?
a) Composite attributes
b) Derived attributes
c) Multivalued attributes
*d) Optional attributes

18. What is an identifying relationship in ER modeling?
a) A relationship that uniquely identifies an entity
b) A relationship that connects an entity to its attributes
*c) A relationship that identifies a weak entity
d) A relationship that defines a primary key

19. What do crow’s feet notations indicate in an ER diagram?
a) One-to-one relationship
b) Many-to-many relationship
*c) One-to-many relationship
d) Zero-or-one relationship

20. In ER diagrams, what do rectangles usually represent?
a) Relationships
b) Attributes
c) Constraints
*d) Entities


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

1. What issue arises if an ER diagram shows circular dependencies?
a) Data redundancy
b) Loss of data integrity
*c) Difficulty in mapping to a relational schema
d) Lower database security

2. You notice that there are redundant relationships between entities in an ER diagram. What is the likely impact?
a) It simplifies the diagram
*b) It creates confusion and ambiguity
c) It improves performance
d) It enhances data integrity

3. If two entities appear to have multiple relationships between them, what should you consider doing?
a) Eliminate one of the relationships
b) Make the entities inherit from a common parent
*c) Consolidate the relationships into a single, well-defined relationship
d) Separate the entities into distinct databases

4. When analyzing an ER diagram, what does the presence of many weak entities suggest?
a) The diagram is incomplete
b) The diagram is highly normalized
*c) The diagram may have excessive dependencies
d) The diagram is poorly designed

5. What is the main drawback of having too many ternary or higher-degree relationships?
a) Makes the ER diagram too simple
*b) May make the diagram difficult to understand and implement
c) Leads to a performance gain
d) Improves data integrity

6. When you see an entity with a high number of attributes, what might that suggest?
a) The entity is highly important
*b) The entity may need to be decomposed into smaller entities
c) The entity will improve database performance
d) The entity enhances security

7. If a relationship does not have a role label, what does it imply?
a) The relationship is incomplete
*b) The role is self-explanatory
c) The relationship is weak
d) The relationship is derived

8. If an attribute is frequently used in calculations, what type of attribute could it be considered as?
a) Composite attribute
b) Single-valued attribute
c) Multi-valued attribute
*d) Derived attribute

9. If you observe that every entity is related to every other entity, what might this suggest?
a) The diagram is highly optimized
*b) The diagram is overly complex and may require simplification
c) The diagram is incomplete
d) The diagram represents a real-world scenario perfectly

10. When the cardinality between two entities is unclear, what should you do?
a) Assume a One-to-One relationship
b) Assume a Many-to-Many relationship
*c) Consult with stakeholders for clarification
d) Eliminate the relationship altogether

1. Is a “Gender” attribute best represented as a single-valued or multi-valued attribute?
*a) Single-valued
b) Multi-valued
c) Composite
d) Derived

2. If a weak entity has no owner entity, what should be your course of action?
a) Delete the weak entity
b) Make the weak entity a strong entity
c) Attach it to an existing strong entity
*d) Review the database requirements, as this should not occur

3. You are given two ER diagrams that model the same database but are structurally different. Which one is better?
a) The one with fewer entities
*b) The one that closely resembles real-world processes
c) The one with fewer attributes
d) The one with fewer relationships

4. A colleague suggests using a single entity to represent both "Current Employees" and "Past Employees." Is this advisable?
a) Yes, it will simplify the database
b) No, it may create challenges in data management and queries
c) Yes, it will improve performance
*d) It depends on the requirement. 

5. Which type of relationship should generally be avoided when possible?
a) One-to-One
b) One-to-Many
c) Many-to-Many
*d) Ternary relationships

6. What is the most significant disadvantage of not properly defining cardinalities in an ER diagram?
a) Increased database size
b) Poor database performance
c) Difficulty in creating SQL queries
*d) Potential for incorrect data relationships

7. In a database representing books and authors, if some books are written by multiple authors and some authors have written multiple books, is a Many-to-Many relationship justified?
*a) Yes
b) No, a single book should always be related to a single author
c) No, it should be One-to-Many
d) No, a third entity should be introduced

8. How would you evaluate the efficiency of an ER diagram?
a) By the number of entities
*b) By its ability to accurately model the real-world scenario without unnecessary complexity
c) By the number of attributes
d) By the number of relationships

9. If an entity does not participate in any relationship, what would you consider doing?
a) Delete the entity
b) Force a relationship with another entity
*c) Evaluate whether it serves a unique purpose that justifies its isolation
d) Merge it with another entity

10. Your ER diagram has many derived attributes. What should you consider?
a) Keeping them, as they are necessary
b) Removing all derived attributes
*c) Evaluate if they can be computed in queries, to reduce redundancy
d) Converting them into strong entities


11. Your ER diagram has separate entities for "Players" and "Coaches." Both share several similar attributes like "Name," "DOB," and "Nationality." What might be a better approach?
a) Leave them separate to reduce complexity
*b) Merge them into a single "Person" entity
c) Create a "Staff" entity and relate it to "Players" and "Coaches"
d) Add another entity for "Officials" and keep all three separate
   
12. In the diagram, each "Team" entity has a "Stadium" attribute. What should you consider doing?
a) Leave it as an attribute
*b) Turn "Stadium" into a separate entity and establish a relationship
c) Add "Stadium" as a derived attribute
d) Make "Stadium" a weak entity under "Team"
   

13. If there is a Many-to-Many relationship between "Players" and "Matches," what could this imply?
*a) Each match has many players, and each player participates in many matches
b) Each player plays in only one match, and each match includes only one player
c) Each match has one player, but each player can participate in many matches
d) This is an erroneous representation and should be corrected
   
14. The "Matches" entity has attributes for "Home Team Score" and "Away Team Score." What is a potential issue with this design?
a) It makes the diagram too simple
*b) It could lead to redundant or conflicting data
c) It will improve database performance
d) It makes the diagram easier to understand
   
15. If there is a relationship between "Players" and "Teams," but no role labels are provided, what should be done?
a) Assume a generic "belongs to" relationship
*b) Add role labels for clarification, like "plays for" or "captains"
c) Delete the relationship as it's unclear
d) Add an attribute to the "Player" entity to describe the role
   
16. Your ER diagram includes an entity for "Seasons," but it only has a single attribute for the year. What might you consider doing?
a) Delete the "Seasons" entity as it is overly simplistic
*b) Add more attributes like "Start Date" and "End Date"
c) Merge it into the "Matches" entity
d) Create a relationship between "Seasons" and "Teams"
   
17. There is a ternary relationship between "Teams," "Players," and "Matches." What could be a reason for this?
*a) To record which player scored in which match for which team
b) To identify the referees for each match
c) To specify the stadium for each match
d) This is likely an error and should be simplified
   
18. What should you consider if the "Matches" entity has several derived attributes like "Winning Team," "Losing Team," and "Draw"?
a) Keep them to simplify queries
*b) Remove them and calculate these in queries to avoid redundancy
c) Convert them into separate entities
d) Make them composite attributes
   
19. There is an attribute for "MVP" (Most Valuable Player) in the "Matches" entity. What is a better way to model this?
a) Make "MVP" a separate entity
b) Add "MVP" as an attribute in the "Players" entity
*c) Create a relationship between "Matches" and "Players" specifically for "MVP"
d) Make it a composite attribute under "Matches"
   
20. If "Matches" has a Many-to-One relationship with "Stadium," what does this imply?
a) A match can be played in multiple stadiums
*b) Each stadium can host multiple matches, but each match is played in one stadium
c) Each match can only be played in one stadium, and each stadium can host only one match
d) This relationship is incorrect and should be modified
    
