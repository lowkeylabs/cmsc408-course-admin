Quiz title: Quiz 3 - Normalization - Blooms 4, Analyze.
Quiz description: This quiz focuses on normalization.

1. When analyzing the closure of a set of attributes, which statement best describes its purpose?
a) It determines the primary key for a relation.
... Incorrect. While primary keys can be determined using closures, it's not their primary purpose.
b) It checks for data anomalies in the relation.
... Incorrect. Checking for data anomalies is a result of normalization, not closures.
*c) It identifies all attributes that can be functionally determined by the given set.
... CORRECT. Closure of a set of attributes determines all attributes functionally determined by it.
d) It verifies if the relation is in its highest normal form.
... Incorrect. The closure of attributes doesn't specifically verify the normal form of a relation.



2. When decomposing relations for normalization, what is the primary goal concerning functional dependency preservation?
a) Ensure that no functional dependency is lost.
... Incorrect. The primary goal is not just about loss but also ensuring no additional FDs are inadvertently introduced.
b) Ensure that the decomposed relations are in the highest normal form.
... Incorrect. While normalization aims for higher normal forms, FD preservation focuses on maintaining dependencies.
*c) Ensure that all functional dependencies are still valid without introducing spurious tuples.
... CORRECT. The goal is to maintain dependencies without introducing inconsistencies.
d) Minimize the number of decomposed relations.
... Incorrect. The primary concern is not minimizing relations but preserving FDs.



3. What is a primary characteristic of a canonical cover for functional dependencies in a relation?
a) It contains the minimum number of functional dependencies.
... Incorrect. While minimality is a feature, it's not the primary characteristic.
*b) It's a minimal set of FDs that's equivalent to the original set and has no extraneous attributes.
... CORRECT. This best describes a canonical cover.
c) It always results in the highest normal form for the relation.
... Incorrect. The normal form is determined by analyzing FDs, not by the canonical cover alone.
d) It reduces the complexity of normalization algorithms.
... Incorrect. Canonical covers streamline FDs but don't necessarily reduce algorithmic complexity.



4. A relation is decomposed into R1 and R2. If joining R1 and R2 using a natural join produces spurious tuples, what might be inferred about the decomposition?
a) It has preserved all functional dependencies.
... Incorrect. Preserving FDs doesn't mean spurious tuples won't be produced.
*b) It's a lossy decomposition.
... CORRECT. Lossy decomposition can lead to spurious tuples when relations are rejoined.
c) It's a lossless decomposition.
... Incorrect. Lossless decompositions don't produce spurious tuples.
d) R1 and R2 are in BCNF.
... Incorrect. The normal form of R1 and R2 doesn't directly infer the presence of spurious tuples.


6. What does Boyce-Codd Normal Form (BCNF) primarily address that 3NF might allow?
a) Partial dependencies.
... Incorrect. Partial dependencies are addressed by 2NF.
b) Multi-valued dependencies.
... Incorrect. MVDs are primarily addressed by 4NF.
*c) Functional dependencies where non-prime attributes determine prime attributes.
... CORRECT. BCNF addresses this particular scenario.
d) All types of data redundancies.
... Incorrect. No normal form can claim to remove all redundancies, as they address specific types.


7. When might denormalization be considered beneficial during database design?
a) When aiming for the highest normal form.
... Incorrect. Denormalization is the process of introducing redundancy, opposite of normalization.
b) To ensure data integrity at all costs.
... Incorrect. Denormalization can compromise data integrity.
*c) To improve performance for specific query patterns.
... CORRECT. Denormalization is often done for performance reasons.
d) To simplify the normalization process.
... Incorrect. Denormalization complicates design rather than simplifying normalization.



8. Given a relation R and a set of functional dependencies F, what would imply that an attribute A is extraneous in a functional dependency?
a) Removing A doesn't change the closure of F.
... Incorrect. It's not about the entire closure of F but about the specific FD.
*b) Removing A from the FD doesn't change the closure of the remaining attributes.
... CORRECT. If the closure remains unchanged, the attribute is extraneous.
c) A is not part of any candidate key.
... Incorrect. An attribute not being part of a key doesn't necessarily make it extraneous.
d) The relation remains in the same normal form without A.
... Incorrect. The extraneous nature of A is determined by FDs, not the relation's normal form.



9. Given a relation R(A,B,C,D) with FDs {A -> B, B -> C}, which attributes' closure includes D?
a) A
... Incorrect. A determines B which in turn determines C. D is not determined.
b) B
... Incorrect. B only determines C.
*c) None of the given attributes' closures include D.
... CORRECT. There's no functional dependency provided that determines D.
d) C
... Incorrect. There's no functional dependency that starts with C.


11. In relation to functional dependencies, which term describes the scenario when the intersection of two or more FDs is a non-empty set?
a) Super key
... Incorrect. Super key is a key that uniquely identifies tuples in a relation.
*b) Overlapping FDs
... CORRECT. Overlapping FDs have a non-empty intersection.
c) Complete set of FDs
... Incorrect. Completeness of FDs doesn't necessarily involve overlapping.
d) Transitive dependency
... Incorrect. Transitive dependency involves an attribute functionally determining another non-prime attribute.


12. Consider a database relation with a set of functional dependencies. Which situation is indicative of a transitive dependency violation of the 3NF?
a) An attribute is determined by the combination of two other attributes.
... Incorrect. That doesn't necessarily indicate a transitive dependency.
b) A non-prime attribute is determined by a part of the primary key.
... Incorrect. This describes a partial dependency.
*c) A non-prime attribute determines another non-prime attribute.
... CORRECT. This is the definition of a transitive dependency.
d) Two separate attributes determine a third attribute.
... Incorrect. This might hint at a composite key but not a transitive dependency.


13. In the normalization process, what would you expect to observe if an incorrect canonical cover was used?
a) An increase in query performance.
... Incorrect. Canonical covers influence FDs, not direct performance.
b) A decrease in data redundancy.
... Incorrect. An incorrect canonical cover might actually lead to more redundancy.
*c) Potential loss or misrepresentation of functional dependencies.
... CORRECT. Using an incorrect canonical cover can result in loss or misrepresentation of FDs.
d) A definite shift to a higher normal form.
... Incorrect. Incorrect canonical covers don't ensure progression to higher normal forms.


14. Which of the following statements best describes the role of multi-valued dependencies (MVDs) in the normalization process?
a) They are used to determine primary keys for relations.
... Incorrect. Primary keys are derived from FDs, not directly from MVDs.
*b) They indicate scenarios where an attribute determines another set of attributes but not vice versa.
... CORRECT. This represents the nature of MVDs.
c) They help in the removal of partial dependencies.
... Incorrect. Partial dependencies are addressed by 2NF.
d) They are resolved by ensuring BCNF.
... Incorrect. MVDs are primarily addressed in 4NF.



15. When analyzing functional dependency preservation, why might a database designer opt for a design that doesn't preserve all FDs?
a) To ensure the database is in BCNF.
... Incorrect. Being in BCNF doesn't necessarily mean sacrificing FD preservation.
b) To decrease the complexity of the relation.
... Incorrect. Complexity isn't directly tied to FD preservation.
*c) To strike a balance between query efficiency and normalization.
... CORRECT. Sometimes, for query efficiency, one might forgo FD preservation.
d) To ensure that multi-valued dependencies are removed.
... Incorrect. MVDs and FD preservation are distinct concepts.



16. In the context of the relational model, which scenario indicates that a relation is NOT in 1NF?
a) It contains duplicate tuples.
... Incorrect. 1NF primarily concerns atomic values, not duplicates.
*b) It has attributes with multi-valued entries.
... CORRECT. Non-atomic (set-valued) attributes violate 1NF.
c) It has a composite primary key.
... Incorrect. Composite primary keys are allowed in 1NF.
d) It has partial dependencies.
... Incorrect. Partial dependencies pertain to 2NF, not 1NF.




18. Which scenario is indicative of a lossless decomposition?
a) The natural join of the decomposed relations results in the original relation.
... Incorrect. This describes lossless join property but isn't definitive.
b) The intersection of the decomposed relations is a superkey of one of the relations.
... Incorrect. This relates to a specific property but doesn't define lossless decomposition.
*c) Both of the above.
... CORRECT. Both conditions together ensure a lossless decomposition.
d) The decomposed relations contain fewer attributes than the original.
... Incorrect. Lossless decomposition isn't about reducing attribute count.



19. During denormalization, which of the following is a common trade-off that database designers accept?
a) Reduced data consistency
... Incorrect. While possible, it's not a primary trade-off sought during denormalization.
b) A decrease in query performance
... Incorrect. The aim of denormalization is often to improve query performance.
*c) Introduction of some level of data redundancy
... CORRECT. Denormalization intentionally introduces redundancy for performance benefits.
d) All of the above
... Incorrect. Only the introduction of redundancy is a common deliberate trade-off.



20. In analyzing the canonical cover of a set of functional dependencies, which of the following properties is crucial?
a) It contains only essential functional dependencies.
... Incorrect. "Essential" isn't a property in this context.
*b) It is equivalent to the original set of FDs without any extraneous attributes.
... CORRECT. The canonical cover eliminates unnecessary attributes while preserving FD equivalence.
c) It reduces the complexity of the database schema.
... Incorrect. A canonical cover addresses FDs, not schema complexity directly.
d) It ensures that the relation is in BCNF.
... Incorrect. A canonical cover doesn't ensure any particular normal form.
