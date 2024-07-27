Quiz title: Quiz1 - Bank - ER Models - Blooms 5 (Evaluate)
Quiz description: This practice quiz focuses on entity-relation models and diagrams. 

    An entity-relationship (ER) model is a conceptual data model used in the field of database design to represent the structure of a database. It focuses on describing the entities (objects, concepts, or things) in a domain, the relationships between those entities, and the attributes (properties or characteristics) associated with the entities. The ER model is commonly used to visualize and understand the high-level organization of data within a system before it is implemented in a database management system.

    Bloom’s Taxonomy, revised in 2001, categorizes six levels of learning from lower- to higher-level thinking skills: Remember, Understand, Apply, Analyze, Evaluate, and Create. Ideally, learning outcomes, class activities, and assessments map to these ascending levels throughout a class or course. Instructors can develop or select questions that assess different levels of cognition, keeping in mind that MC questions at the Create level may prove more challenging to develop.



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
    
