Quiz title: Quiz 3 - Normalization - Blooms 2, Understand.
Quiz description: This quiz focuses on normalization.


1. In the context of the Relational Model, what does a tuple represent?
a) A database
... Incorrect. A database is a collection of related tables.
*b) A row in a table
... CORRECT. A tuple is equivalent to a row in a table.
c) A column in a table
... Incorrect. A column represents an attribute.
d) A primary key
... Incorrect. A primary key is a unique identifier for a tuple.


2. What does the closure of an attribute set determine?
a) The set of all tables in the database
... Incorrect. The closure is related to functional dependencies, not tables.
*b) The set of all attributes that are functionally determined by it
... CORRECT. The closure gives the set of attributes that can be determined by a given set.
c) The set of all primary keys
... Incorrect. Closure doesn't directly relate to primary keys.
d) The set of all foreign keys
... Incorrect. Closure doesn't directly relate to foreign keys.


3. Which of the following best describes a Canonical Cover?
a) A set of all relations in a database
... Incorrect. A canonical cover deals with functional dependencies.
*b) A minimal set of functional dependencies that is equivalent to the original
... CORRECT. A canonical cover simplifies FDs without losing any information.
c) A maximal set of functional dependencies
... Incorrect. The idea is to minimize, not maximize.
d) A backup of the database
... Incorrect. Backup is not related to canonical cover.


4. In which Normal Form must a relation have no transitive dependencies of non-key attributes on the primary key?
a) 1NF
... Incorrect. 1NF deals with atomic values.
*b) 3NF
... CORRECT. 3NF ensures no transitive dependencies of non-key attributes on the primary key.
c) 2NF
... Incorrect. 2NF focuses on partial dependencies.
d) BCNF
... Incorrect. BCNF has stricter requirements than 3NF.


5. Boyce-Codd Normal Form (BCNF) is a stricter version of:
a) 1NF
... Incorrect. 1NF is a foundational normal form.
b) 2NF
... Incorrect. 2NF deals with partial dependencies.
*c) 3NF
... CORRECT. BCNF is stricter than 3NF and handles certain anomalies that 3NF does not.
d) 4NF
... Incorrect. 4NF is actually stricter than BCNF and addresses multi-valued dependencies.


6. Why is denormalization sometimes used in database design?
a) To improve logical integrity
... Incorrect. Denormalization might compromise logical integrity.
b) To delete redundant data
... Incorrect. Denormalization might introduce redundancy.
*c) To enhance performance
... CORRECT. Denormalization can improve query performance at the cost of some redundancy.
d) To reach higher normal forms
... Incorrect. Denormalization typically results in a database that's in a lower normal form.


9. What is the main aim of normalization algorithms?
a) To reduce the size of a database
... Incorrect. Size reduction is not the primary goal of normalization.
b) To ensure data consistency
... Incorrect. While consistency is a benefit, it's not the primary aim.
*c) To eliminate data redundancy and anomalies
... CORRECT. Normalization aims to minimize redundancy and reduce anomalies.
d) To denormalize data
... Incorrect. Normalization and denormalization are opposite processes.


10. If a relation R is in BCNF, which of the following must also be true?
a) R is in 4NF
... Incorrect. 4NF is stricter than BCNF.
*b) R is in 3NF
... CORRECT. BCNF is a stricter version of 3NF, so if R is in BCNF, it is also in 3NF.
c) R has multi-valued dependencies
... Incorrect. Having MVDs is not a necessary condition of BCNF.
d) R has been denormalized
... Incorrect. BCNF is a normalization process, not denormalization.


11. In the context of databases, what does "atomicity" in 1NF refer to?
a) Atomic bomb simulations
... Incorrect. This is unrelated to the context of databases.
*b) The indivisibility of attribute values
... CORRECT. 1NF ensures that each attribute contains only atomic (indivisible) values.
c) Atomic operations in transactions
... Incorrect. This relates to ACID properties, not normalization.
d) Atoms in molecular databases
... Incorrect. This doesn't pertain to the relational model's atomicity.


12. Which of the following best defines a partial dependency?
*a) A non-key attribute depends on part of a composite key.
... CORRECT. This is the definition of a partial dependency.
b) A non-key attribute depends on another non-key attribute.
... Incorrect. This is more associated with transitive dependencies.
c) All attributes depend on the primary key.
... Incorrect. This is an ideal scenario in normalization, not partial dependency.
d) A key attribute depends on a non-key attribute.
... Incorrect. Key attributes should not depend on non-key attributes.


13. Why is Functional Dependency Preservation important in the normalization process?
a) To make sure the database size is minimized.
... Incorrect. Size minimization is not the main goal of preserving FDs.
*b) To ensure that all functional dependencies of the original relation can be enforced in the decomposed relations.
... CORRECT. Preservation ensures we don't lose the ability to enforce FDs after decomposition.
c) To ensure that data is encrypted.
... Incorrect. Encryption is a security measure, not directly related to FD preservation.
d) To ensure faster query processing.
... Incorrect. While FD preservation can indirectly aid in querying, it's not the main reason.


15. Which of the following might be a reason to use denormalization in a database design?
a) To make the data model more complex.
... Incorrect. Complexity is not a desired outcome in itself.
b) To adhere strictly to normalization rules.
... Incorrect. Denormalization is the opposite of strict normalization.
*c) To achieve faster read operations at the cost of some redundancy.
... CORRECT. Denormalization can improve read performance, but often introduces redundancy.
d) To ensure that the database is in the highest normal form.
... Incorrect. Denormalization moves away from higher normal forms.


16. What does the term "transitive dependency" in the context of databases refer to?
a) The shift of data from one storage to another.
... Incorrect. This isn't related to normalization.
*b) A non-key attribute depending on another non-key attribute.
... CORRECT. This is the definition of a transitive dependency.
c) The transit of data over a network.
... Incorrect. This pertains to data transfer, not normalization.
d) The ability to transition between normal forms.
... Incorrect. This isn't a standard term in database theory.


17. In which of the following scenarios would it be MOST appropriate to consider denormalization?
a) When designing a database from scratch.
... Incorrect. Initial designs often start with normalization.
*b) When optimizing a database for specific read-heavy use cases.
... CORRECT. Denormalization can improve read performance.
c) When enforcing strict data integrity.
... Incorrect. Denormalization can introduce redundancy, potentially compromising data integrity.
d) When trying to understand the relationships between tables.
... Incorrect. Understanding relationships is usually part of the design and normalization process.


18. What is the primary goal of 2NF?
a) To eliminate multi-valued dependencies.
... Incorrect. This is the goal of 4NF.
b) To break down large tables into smaller ones.
... Incorrect. The goal is not about table size but about eliminating specific types of redundancy.
*c) To eliminate partial dependencies.
... CORRECT. 2NF targets partial dependencies.
d) To ensure atomicity of attributes.
... Incorrect. This is the goal of 1NF.


19. Which normal form requires removing both partial and transitive dependencies?
a) 1NF
... Incorrect. 1NF ensures atomicity.
b) BCNF
... Incorrect. BCNF is stricter than 3NF.
*c) 3NF
... CORRECT. 3NF removes both partial and transitive dependencies.
d) 2NF
... Incorrect. 2NF only addresses partial dependencies.



20. For a relation to be in BCNF, which of the following must be true?
a) All attributes must be atomic.
... Incorrect. This is a requirement for 1NF.
b) All multi-valued dependencies must be removed.
... Incorrect. This is the requirement for 4NF.
*c) For every non-trivial FD, the left-hand side must be a superkey.
... CORRECT. This is the BCNF requirement.
d) The relation must have no partial dependencies.
... Incorrect. This is a requirement for 2NF, though BCNF would inherently satisfy this condition as well.

