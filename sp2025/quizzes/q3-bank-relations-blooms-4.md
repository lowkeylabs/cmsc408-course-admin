Quiz title: Quiz 3 - Relations, relational model and relational algebra - Blooms 4, Analyze.
Quiz description: This quiz focuses on Relations, relational model and relational algebra.

1. Analyzing the two given relations, which of the following operations would result in a set containing tuples where column B in Relation R is equal to column K in Relation S? [Don't get confused with the ⨝, this is a THETA JOIN not a natural join. One of these is correct!]
... Here, a join operation is being utilized to analyze and find matching tuples between the two relations based on specified columns.
*a) R ⨝(B=K) S
... CORRECT. This operation correctly identifies the tuples where column B of relation R equals column K of relation S.
b) R ⨝(A=K) S
... Incorrect. This operation tries to match column A of relation R with column K of relation S, which doesn't align with the query.
c) R ⨝(C=K) S
... Incorrect. This operation tries to match column C of relation R with column K of relation S, which doesn't align with the query.
d) R ⨝(B=L) S
... Incorrect. This operation tries to match column B of relation R with column L of relation S, which doesn't align with the query.

2. Which set of tuples would result from the operation π A, C (σ B=4 (R))?
... In this question, a projection operation follows a selection operation to analyze and extract specific data from relation R.
*a) {(4, 4)}
... CORRECT. This operation first selects the row where column B equals 4 and then projects columns A and C.
b) {(4, 3)}
... Incorrect. This set doesn't match any possible result from the given operation on relation R.
c) {(3, 4)}
... Incorrect. This set doesn't match any possible result from the given operation on relation R.
d) {(1, 2)}
... Incorrect. This set doesn't match any possible result from the given operation on relation R.

3. What will be the result set of the operation π J, K (σ M>1 (S))?
... Here, the query combines selection and projection operations to analyze and retrieve specific data from relation S.
*a) {(1, 2), (2, 1)}
... CORRECT. This operation first selects the rows where column M is greater than 1 and then projects columns J and K.
b) {(1, 2), (3, 3)}
... Incorrect. This set contains tuples which do not satisfy the selection condition M>1.
c) {(2, 1), (3, 3)}
... Incorrect. This set includes a tuple which doesn't satisfy the selection condition M>1.
d) {(1, 3), (3, 3)}
... Incorrect. This set includes a tuple which doesn't exist in relation S.

4. If we were to perform a natural join between relations R and S, how many columns would the resulting relation have?
... This question asks to analyze the structure of the result of a natural join operation between the two relations.
a) 6
... Incorrect. A natural join would only include one instance of columns with the same name.
b) 7
... Incorrect. A natural join would only include one instance of columns with the same name.
*c) 0.
... CORRECT. Since there are no columns with the same name, a natural join would result in an empty set.
d) 9
... Incorrect. This exceeds the total number of columns from both relations combined.

5. Considering relations R and S, which operation would derive a set containing only the tuples where column A in R is less than column M in S?
... Here, a Cartesian product followed by a selection operation is used to analyze and find specific tuples between the two relations.
a) π (R,S) × (σ (A<M) R) 
... Incorrect. This equation is a hot mess of symbols. 
*b) σ (A<M) (R × S)
... CORRECT. This operation first performs a Cartesian product and then selects tuples where column A in R is less than column M in S.
c) σ (A<M) (R ⨝ S)
... Incorrect. This operation tries to perform a natural join which is not the right approach to find tuples satisfying the condition across both relations.
d) π (A<M) (R × S)
... Incorrect. The symbol used here represents projection, not selection, which is not suitable for finding tuples satisfying a specific condition.

6. When applying a difference operation (R - S) considering columns B and K respectively, which tuples will be present in the result set?
... This question encourages students to analyze the implications of the difference operation on the given relations.
a) {(3), (2)}
... Incorrect. This set contains tuples that aren't in relation R's column B exclusively.
b) {(1), (4)}
... Incorrect. This set contains tuples that aren't in relation R's column B exclusively.
*c) {(4)}
... CORRECT. Only the tuple with 4 is exclusive to column B in relation R when compared to column K in relation S.
d) {(1), (2), (3)}
... Incorrect. These tuples are not exclusive to column B in relation R when compared with column K in relation S.

7. What would be the result of the operation σ (A+B)=C (R)?
... This query requires analyzing the tuple values in relation R to identify which satisfy the given condition.
a) {(1, 3, 2), (2, 2, 1)}
... Incorrect. The sum of A and B does not equal C for the first tuple in this set.
*b) { empty }
... CORRECT. None of the tuples meet the condition where the sum of A and B equals C.
c) {(1, 3, 2), (3, 1, 3)}
... Incorrect. The sum of A and B does not equal C for the first tuple in this set.
d) {(4, 4, 4)}
... Incorrect. This tuple is not in the relation R.

8. Analyzing relations R and S, what would be the outcome of the operation π B,C (σ A>J (R × S))?
... Here, a Cartesian product is followed by a selection and projection to analyze and extract data from the relations.
a) {(3, 2), (2, 1), (1, 3)}
... Incorrect. This set doesn't match any possible result from the given operation on the relations R and S.
b) {(3, 2), (4, 4), (2, 1)}
... Incorrect. This set doesn't match any possible result from the given operation on the relations R and S.
c) {(3, 2), (4, 4), (1, 3)}
... Incorrect. This set doesn't match any possible result from the given operation on the relations R and S.
*d) {(2, 1), (1, 3), (4, 4)}
... CORRECT. This operation first performs a Cartesian product, then selects tuples where column A in R is greater than column J in S, and finally projects columns B and C removing duplicates.

11. Considering the relations R and S, which of the following operations would result in a set containing only tuples where column C from relation R is equal to column M from relation S?
... Here, the Cartesian product combined with a selection operation is used to analyze and extract specific tuples from both relations.
a) σ (C>K) (R × S)
... Incorrect. This operation finds tuples where column C from R is greater than column K from S, which is not the condition mentioned in the question.
*b) σ (C=M) (R × S)
... CORRECT. This operation correctly identifies tuples where column C from R is equal to column M from S.
c) σ (C<L) (R × S)
... Incorrect. This operation finds tuples where column C from R is less than column L from S, not matching the specified condition.
d) σ (C=J) (R × S)
... Incorrect. This operation finds tuples where column C from R is equal to column J from S, which is not the condition mentioned in the question.

12. Which operation can be applied to extract tuples from relation R where the sum of columns A and C is equal to double the value in column B?
... This question prompts students to analyze the relation R and apply a selection operation with a specific condition.
a) σ (A+C)=B (R)
... Incorrect. This operation checks if the sum of columns A and C equals the value in column B, not double the value.
b) σ A+B=C (R)
... Incorrect. This operation checks if the sum of columns A and B equals value in column C.
c) σ (A+C)=(3*B) (R)
... Incorrect. This operation checks if the sum of columns A and C equals triple the value in column B, which is not the correct condition.
*d) σ (A+C)=(2*B) (R)
... CORRECT. This operation correctly checks if the sum of columns A and C equals double the value in column B.

13. Analyzing relations R and S, which operation would yield a set containing tuples where the value in column A of relation R is greater than column J of relation S and column B of relation R is less than column K of relation S?
... This question employs a Cartesian product followed by a selection operation to analyze and extract specific data from both relations.
*a) σ (A>J ∧ B<K) (R × S)
... CORRECT. This operation correctly identifies tuples where column A in R is greater than column J in S, and column B in R is less than column K in S.
b) σ (A<J ∧ B<K) (R × S)
... Incorrect. This operation would return tuples where column A in R is less than column J in S, which does not match the condition stated.
c) σ (A>J ∨ B<K) (R × S)
... Incorrect. This operation uses an OR condition, which would return a larger set of tuples, not strictly satisfying both conditions.
d) σ (A<J ∨ B>K) (R × S)
... Incorrect. This operation would return tuples where either column A in R is less than column J in S or column B in R is greater than column K in S, which doesn't match the condition stated.

14. Which operation will produce a relation containing all tuples from Relation R where the value in column C is either 1 or 4?
... Here, the selection operation is utilized to analyze and extract specific tuples from relation R based on a given condition.
a) σ (C=1 ∧ C=4) (R)
... Incorrect. This operation uses an AND condition, which cannot be true since C cannot be both 1 and 4 at the same time.
*b) σ (C=1 ∨ C=4) (R)
... CORRECT. This operation correctly identifies tuples where column C is either 1 or 4, using the OR condition to allow either value.
c) σ (C>1 ∧ C<4) (R)
... Incorrect. This operation would return tuples where column C is between 1 and 4, but not including 1 or 4.
d) σ (C<1 ∨ C>4) (R)
... Incorrect. This operation would return tuples where column C is less than 1 or greater than 4, which does not match the condition stated.

15. In analyzing relations R and S, which of the following operations would yield a result set with tuples from relation R concatenated with tuples from relation S where column B of R is equal to column L of S?  [NOTE - this is a THETA JOIN not a natural join!]
... This question involves using a join operation to analyze and combine tuples from both relations based on a specific condition.
a) R ⨝ (B=K) S
... Incorrect. This operation would join tuples where column B of R equals column K of S, not matching the stated condition.
b) R ⨝ (B=M) S
... Incorrect. This operation would join tuples where column B of R equals column M of S, not matching the stated condition.
*c) R ⨝ (B=L) S
... CORRECT. This operation correctly joins tuples where column B of R equals column L of S, matching the condition stated in the question.
d) R ⨝ (B=J) S
... Incorrect. This operation would join tuples where column B of R equals column J of S, not matching the stated condition.


2. What will be the result of the operation σ B=2(R)?
... This question requires the analysis of the selection operation which filters tuples based on a condition.
*a) { (2, 2, 1) }
... CORRECT. This set contains all tuples from relation R where the value in column B is 2.
b) { (2, 2, 1), (1, 2, 3) }
... Incorrect. The second tuple is not a member of R.
c) { (1, 3, 2), (3, 1, 3) }
... Incorrect. This set contains tuples that do not satisfy the condition B=2.
d) { (4, 4, 4) }
... Incorrect. This tuple doesn't satisfy the condition B=2.

3. When performing the operation π B, C (R), which set of tuples will be returned?
... This question focuses on the projection operation that returns specified attributes from a relation.
a) { (3, 2), (2, 1) }
... Incorrect. This set does not represent the correct projection of columns B and C from relation R.
b) { (1, 3), (4, 4) }
... Incorrect. This set does not represent the correct projection of columns B and C from relation R.
*c) { (3, 2), (2, 1), (1, 3), (4, 4) }
... CORRECT. This set contains all tuples resulting from projecting columns B and C from relation R.
d) { (2, 1), (1, 3), (4, 4) }
... Incorrect. This set misses one tuple that should be in the result of the projection.

4. For the operation R ⨝ (C=M) S, how many tuples will be in the resulting relation?
... This question requires analyzing the resulting set of tuples from a join operation based on a condition involving two columns.
a) 1
... Incorrect. There would be more matching tuples based on the condition C=M.
b) 2
... Incorrect. Based on the given tables, three tuples satisfy the condition C=M.
*c) 3
... CORRECT.  There are three tuples that satisfy the condition C=M in the given relations.
d) 4
... Incorrect. There aren't four tuples that satisfy the condition C=M in the given relations.

5. In the cartesian product of R and S (R × S), what will be the total number of tuples in the resulting relation?
... This question assesses understanding of cartesian product which combines every tuple from one relation with every tuple from another relation.
a) 6
... Incorrect. The cartesian product will result in more tuples.
b) 8
... Incorrect. The cartesian product will result in more tuples.
*c) 12
... CORRECT. Since there are 4 tuples in R and 3 in S, the cartesian product will yield 12 tuples (4×3).
d) 16
... Incorrect. This number is higher than the expected number of tuples in the result.

6. If you apply the set difference operation on R and S (R - S), which set of tuples will you obtain?
... This question requires analyzing the set difference operation which returns tuples that are in one relation but not in another.
*a) { (1, 3, 2), (2, 2, 1), (3, 1, 3), (4, 4, 4) }
... CORRECT. Since all tuples in R are different from those in S, the set difference will return all tuples from R.
b) { (1, 3, 2), (2, 2, 1) }
... Incorrect. This set does not represent the correct set difference, as it leaves out some tuples from R.
c) { (3, 1, 3), (4, 4, 4) }
... Incorrect. This set does not represent the correct set difference, as it leaves out some tuples from R.
d) { empty }
... Incorrect. The set difference will not result in an empty set, since all tuples in R are different from those in S.

7. What set of tuples will result from the operation σ B≥3(R)?
... This question requires analyzing the selection operation to find tuples that satisfy a certain condition.
a) { (2, 2, 1), (4, 4, 4) }
... Incorrect. This set includes a tuple that does not satisfy the condition B≥3.
b) { (1, 3, 2), (3, 1, 3) }
... Incorrect. This set includes a tuple that does not satisfy the condition B≥3.
*c) { (1, 3, 2), (4, 4, 4) }
... CORRECT. This set includes all tuples from R where the value in column B is greater than or equal to 3.
d) { (1, 3, 2), (2, 2, 1) }
... Incorrect. This set includes a tuple that does not satisfy the condition B≥3.

8. What set of tuples will be the result of the operation σ K≤2(S)?
... This question necessitates analyzing the selection operation to filter tuples based on a specific condition.
a) { (1, 2, 3, 2), (3, 3, 1, 1) }
... Incorrect. This set includes a tuple that doesn't satisfy the condition K≤2.
*b) { (1, 2, 3, 2), (2, 1, 2, 3) }
... CORRECT. This set includes all tuples from S where the value in column K is less than or equal to 2.
c) { (1, 2, 3, 2) }
... Incorrect. This set omits one tuple that satisfies the condition K≤2.
d) { (2, 1, 2, 3), (3, 3, 1, 1) }
... Incorrect. This set includes a tuple that doesn't satisfy the condition K≤2.

9. What set of tuples is obtained from the operation R ∩ S?
... This question evaluates the understanding of intersection operation which returns tuples that are present in both relations.
a) { (1, 3, 2), (2, 2, 1) }
... Incorrect. These tuples are only found in relation R, not in both R and S.
b) { (3, 1, 3), (4, 4, 4) }
... Incorrect. These tuples are only found in relation R, not in both R and S.
c) { (1, 2, 3, 2), (2, 1, 2, 3) }
... Incorrect. These tuples are only found in relation S, not in both R and S.
*d) { empty }
... CORRECT. R and S are not union-compatible, thus the result is an empty set.

10. Which set of tuples will be the result of the operation R ∪ S?
... This question evaluates the union operation which combines all tuples from both relations, removing duplicates.
*a) { empty }
... CORRECT. R and S are not union compatible, that is the columns don't match.
b) { (1, 2, 3, 2), (2, 1, 2, 3), (3, 3, 1, 1) }
... Incorrect. This set only includes tuples from relation S and excludes those from R.
c) { (1, 3, 2), (2, 2, 1), (3, 1, 3), (4, 4, 4), (1, 2, 3, 2), (2, 1, 2, 3), (3, 3, 1, 1) }
... Incorrect.  R and S are not union compatible.
d) { (1, 3, 2), (2, 2, 1), (3, 1, 3), (4, 4, 4) }
... Incorrect. This set only includes tuples from relation R and excludes those from S.


13. Which operation can be used to find tuples in relation R where values in column B are less than those in column C?
... This question assesses the capability to identify the correct relational algebra operation to find tuples matching a specific condition.
a) σ B=C (R)
... Incorrect. This operation would return rows where the values of B and C are equal, not where B is less than C.
b) σ B≥C (R)
... Incorrect. This operation would return rows where the values of B are greater than or equal to those in column C, not less than.
*c) σ B<C (R)
... CORRECT. This operation returns rows where the values in column B are less than those in column C.
d) σ B>L (R)
... Incorrect. This operation involves an attribute L that doesn't exist in relation R, making the operation invalid.


15. In finding tuples from relation S that have a higher value in column M compared to column K, which operation would be suitable?
... This question analyzes the suitable relational algebra operation to find tuples in S where values in column M are greater than those in column K.
a) σ M=K (S)
... Incorrect. This operation would return rows where the values in columns M and K are equal, not where M is greater than K.
b) σ K>M (S)
... Incorrect. This operation would return rows where the values in column K are greater than those in column M, which is opposite to the requirement.
c) π K, M (S)
... Incorrect. This operation only projects columns K and M without making any comparison between values in these columns.
*d) σ M>K (S)
... CORRECT. This operation returns rows where the values in column M are greater than those in column K, fulfilling the condition specified in the question.

