Quiz title: Quiz 3 - Normalization - Blooms 3, Apply.
Quiz description: This quiz focuses on normalization.

1. Given a relational schema, if you have derived the closure of an attribute set and it includes all the attributes of the relation, what can be inferred?
*a) The attribute set is a superkey.
... CORRECT. If the closure of an attribute set includes all the attributes, it is a superkey.
b) The attribute set is a primary key.
... Incorrect. Being a superkey doesn't necessarily mean it's the primary key; primary keys are also minimal.
c) The attribute set has no functional dependency.
... Incorrect. The closure indicates dependencies, not the lack of them.
d) The attribute set is non-trivial.
... Incorrect. Non-trivial means the left-hand side is not a subset of the right-hand side in FD.


2. If every non-trivial functional dependency in a relation has a superkey on its left side, the relation is in which normal form?
a) 1NF
... Incorrect. 1NF only deals with atomic values.
b) 2NF
... Incorrect. 2NF deals with partial dependencies.
*c) BCNF
... CORRECT. A relation is in BCNF if every non-trivial FD has a superkey on its left side.
d) 3NF
... Incorrect. 3NF allows non-superkeys if the right side is a prime attribute.


3. Which of the following is true regarding canonical cover?
a) It contains redundant functional dependencies.
... Incorrect. Canonical cover minimizes redundancy.
*b) It is a minimal set of FDs that is equivalent to the original set.
... CORRECT. A canonical cover is minimal and preserves the original FDs semantics.
c) It always contains the same number of FDs as the original set.
... Incorrect. Its purpose is to minimize the set.
d) It negates the closure of attributes.
... Incorrect. Canonical cover and closures are different concepts.



4. In the normalization process, which step ensures that the relationship is free of transitive dependencies on its primary key?
a) Ensuring 1NF
... Incorrect. 1NF focuses on atomic values.
b) Ensuring 2NF
... Incorrect. 2NF addresses partial dependencies.
*c) Ensuring 3NF
... CORRECT. 3NF ensures no transitive dependencies on the primary key.
d) Ensuring BCNF
... Incorrect. BCNF deals with ensuring superkeys for non-trivial FDs.



5. When breaking down a relation into smaller relations, which of the following is most crucial to avoid?
a) Achieving 1NF
... Incorrect. Achieving 1NF is basic and not something to avoid.
*b) Losing data when re-joining the decomposed relations.
... CORRECT. Avoiding data loss is critical during normalization.
c) Removing all functional dependencies.
... Incorrect. Some functional dependencies might remain in the decomposed relations.
d) Achieving 4NF
... Incorrect. Achieving 4NF can be beneficial, not something to avoid.



6. Which of the following is not a primary purpose of normalization?
a) Remove redundant data.
... Incorrect. Removing redundancy is a main purpose.
b) Achieve data integrity.
... Incorrect. Data integrity is a result of normalization.
c) Minimize anomalies.
... Incorrect. Minimizing anomalies is a goal of normalization.
*d) Increase query performance.
... CORRECT. Normalization can sometimes decrease query performance due to additional joins.


8. If you're given a relation where all attributes are prime attributes (part of some candidate key), which normal form is it guaranteed to be in?
a) 1NF
... Incorrect. Prime attributes don't guarantee 1NF.
*b) 2NF
... CORRECT. If all attributes are prime, there's no partial dependency, ensuring 2NF.
c) BCNF
... Incorrect. Being in 2NF doesn't guarantee BCNF.
d) 4NF
... Incorrect. 4NF addresses multi-valued dependencies, not prime attributes.



9. Which of the following is true for a relation in 2NF?
a) It is free of multi-valued dependencies.
... Incorrect. 2NF doesn't address MVDs.
b) It has redundant data.
... Incorrect. Redundancy is what normalization tries to remove.
*c) It is free of partial dependencies on the primary key.
... CORRECT. 2NF ensures no partial dependencies.
d) All its functional dependencies are trivial.
... Incorrect. 2NF doesn't require all FDs to be trivial.



10. In denormalization, what is typically a driving factor?
a) To achieve 4NF
... Incorrect. Denormalization may take a design away from higher NFs.
b) To remove all functional dependencies
... Incorrect. Denormalization might reintroduce some dependencies.
*c) To improve query performance
... CORRECT. Denormalization is often done to improve performance at the expense of redundancy.
d) To ensure data integrity
... Incorrect. While data integrity is essential, denormalization might compromise it in some cases.





11. Consider a relation R(A, B, C, D). If {A -> C, BC -> D} are the given functional dependencies, which attribute or set of attributes is guaranteed to be a candidate key?
a) A
... Incorrect. A by itself is not sufficient to determine all attributes.
b) BC
... Incorrect. BC can determine D but not A or C.
*c) AB
... CORRECT. AB can determine C through A -> C and D through BC -> D.
d) CD
... Incorrect. CD does not have any functional dependencies given.



12. When decomposing a relation, which of the following properties ensures that no functional dependencies are lost?
a) Lossless Join Property
... Incorrect. Lossless join ensures no tuples are lost, not FDs.
*b) Dependency Preservation Property
... CORRECT. This property ensures that functional dependencies are preserved.
c) 2NF
... Incorrect. 2NF only deals with partial dependencies.
d) Atomicity
... Incorrect. Atomicity relates to 1NF and ensuring values are indivisible.



13. Given the functional dependencies {A -> B, B -> C}, which of the following closures will include A, B, and C?
a) B+
... Incorrect. B+ will include B and C, but not A.
*b) A+
... CORRECT. A+ will include A, B (through A -> B), and C (through B -> C).
c) C+
... Incorrect. C does not determine any other attributes.
d) AB+
... Incorrect. A+ alone can determine all three attributes.



14. A table with repeating groups or arrays violates which of the following normal forms?
*a) 1NF
... CORRECT. 1NF requires all attributes to have atomic values.
b) 2NF
... Incorrect. 2NF deals with partial dependencies.
c) 3NF
... Incorrect. 3NF addresses transitive dependencies.
d) BCNF
... Incorrect. BCNF ensures every non-trivial FD has a superkey on its left.



15. If a relation is in BCNF, which other normal form is it also guaranteed to be in?
a) 4NF
... Incorrect. BCNF doesn't ensure absence of multi-valued dependencies.
b) 5NF
... Incorrect. 5NF addresses join dependencies.
*c) 3NF
... CORRECT. BCNF is a stricter form than 3NF, so BCNF ensures 3NF.
d) 1NF
... Incorrect. While BCNF does imply 1NF, it directly ensures 3NF.



16. In a relation, a non-prime attribute functionally determines another non-prime attribute. This violation is against which normal form?
a) 1NF
... Incorrect. 1NF addresses atomicity of attributes.
b) 2NF
... Incorrect. 2NF deals with partial dependencies of non-prime attributes on candidate key.
*c) 3NF
... CORRECT. 3NF requires no transitive dependencies of non-prime attributes.
d) BCNF
... Incorrect. BCNF requires every non-trivial FD to have a superkey on the left.



17. Which of the following best describes a partial dependency?
a) A dependency of a non-prime attribute on another non-prime attribute.
... Incorrect. That's a transitive dependency.
*b) A dependency of an attribute on just part of a composite key.
... CORRECT. Partial dependency is when an attribute depends on a part, but not all, of a composite candidate key.
c) A dependency where an attribute depends on itself.
... Incorrect. That's a trivial dependency.
d) A dependency of an attribute on two or more other attributes.
... Incorrect. That's a full dependency in the context of composite keys.



18. If a relation is decomposed in a way that some functional dependencies cannot be tested directly on the decomposed relations, the decomposition lacks:
a) Atomicity
... Incorrect. Atomicity relates to 1NF.
b) Lossless Join Property
... Incorrect. Lossless join ensures no tuples are lost.
*c) Dependency Preservation Property
... CORRECT. When some FDs cannot be tested directly after decomposition, it lacks this property.
d) BCNF
... Incorrect. BCNF ensures non-trivial FDs have superkeys, but doesn't address FD testing post-decomposition.



19. For a relation to be in 4NF, which type of dependency should it not contain?
a) Trivial dependencies
... Incorrect. Trivial dependencies are always allowed.
*b) Multi-valued dependencies that are not a superkey
... CORRECT. 4NF ensures no non-trivial multi-valued dependencies on a superkey.
c) Functional dependencies
... Incorrect. FDs are allowed and are crucial for understanding the structure.
d) Transitive dependencies
... Incorrect. Transitive dependencies are addressed in 3NF.



20. During denormalization, which of the following might be intentionally introduced for the sake of performance?
a) Multi-valued dependencies
... Incorrect. MVDs are typically not introduced during denormalization.
*b) Redundant data
... CORRECT. Redundancy might be reintroduced to reduce join operations and improve performance.
c) Non-trivial functional dependencies
... Incorrect. Denormalization doesn't typically target FD introduction.
d) Non-atomic attributes
... Incorrect. Non-atomic attributes would violate 1NF and are typically not a goal of denormalization.
