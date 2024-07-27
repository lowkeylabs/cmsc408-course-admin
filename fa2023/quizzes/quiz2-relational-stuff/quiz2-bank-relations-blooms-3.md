Quiz title: Quiz 2 - Relations, relational model and relational algebra - Blooms 3, Apply.
Quiz description: This quiz focuses on Relations, relational model and relational algebra.


1. To find the tuples in relation R where column B has values less than 3, which of the following operations can be used?
... This requires applying a selection operation to find the required tuples from relation R based on a specific condition.
*a) σ B<3 (R)
... CORRECT. This operation selects rows in relation R where the values in column B are less than 3.
b) σ B>3 (R)
... Incorrect. This operation selects rows where the values in column B are greater than 3, which is not what we're looking for.
c) π A, C (R)
... Incorrect. This operation only projects columns A and C without applying any condition on column B.
d) σ B=3 (R)
... Incorrect. This operation selects rows where column B has the value 3, not less than 3.

2. If you want to create a new relation that only contains columns A and C from relation R, which operation should you use?
... Applying projection operation to select specific columns from a relation.
a) σ A, C (R)
... Incorrect. The sigma (σ) symbol represents selection operation, not projection.
*b) π A, C (R)
... CORRECT. This operation projects columns A and C, creating a new relation with only these columns.
c) π B, C (R)
... Incorrect. This operation projects columns B and C, not columns A and C.
d) R ⨝ S
... Incorrect. This operation performs a join between relations R and S, which does not help in projecting specific columns from relation R.

3. To find the tuples in relation S where column J is equal to column M, which of the following operations can be applied?
... Applying a selection operation with a specific condition to find the matching rows within relation S.
*a) σ J=M (S)
... CORRECT. This operation helps in finding the rows where column J is equal to column M.
b) σ J≠M (S)
... Incorrect. This operation selects rows where column J is not equal to column M, which is the opposite of what we want.
c) π J, M (S)
... Incorrect. This operation only projects columns J and M without comparing the values.
d) π K, L (S)
... Incorrect. This operation projects columns K and L, which does not serve our purpose.

4. To extract the rows from relation R where column A has values greater than 2, which operation is the most suitable?
... Here we are applying a selection operation with a specific condition to find rows that meet the criteria.
a) σ A=2 (R)
... Incorrect. This operation selects rows where column A has the value 2, not greater than 2.
b) π A, B (R)
... Incorrect. This operation projects columns A and B without applying any condition on column A.
*c) σ A>2 (R)
... CORRECT. This operation selects rows in relation R where the values in column A are greater than 2.
d) σ B>2 (R)
... Incorrect. This operation focuses on column B rather than column A.

5. If you want to find the tuples in relation S where column K is not equal to column M, which operation would you apply?
... This requires applying a selection operation to find rows in relation S where columns K and M have different values.
a) σ K=M (S)
... Incorrect. This operation selects rows where column K is equal to column M.
*b) σ K≠M (S)
... CORRECT. This operation selects rows where column K is not equal to column M.
c) π K, L (S)
... Incorrect. This operation only projects columns K and L without comparing values with column M.
d) π J, M (S)
... Incorrect. This operation only projects columns J and M, which does not serve our purpose here.

6. To extract the values from columns A and B in relation R, which operation should you choose?
... This is about applying a projection operation to select specific columns from a relation.
a) σ A, B (R)
... Incorrect. The sigma symbol is used for selection operations, not projection.
*b) π A, B (R)
... CORRECT. This operation correctly projects columns A and B from relation R.
c) π B, C (R)
... Incorrect. This operation projects columns B and C, not columns A and B.
d) σ A>B (R)
... Incorrect. This operation applies a condition on columns A and B, instead of projecting them.

7. In order to select rows from relation S where column L is greater than 2, which operation would be correct?
... Here we are applying a selection operation to extract rows based on a specific condition from column L in relation S.
a) π L>2 (S)
... Incorrect. The pi (π) symbol is used for projection operations, not for selection.
b) σ J>2 (S)
... Incorrect. This operation selects rows based on column J, not column L.
c) σ K>2 (S)
... Incorrect. This operation selects rows based on column K, not column L.
*d) σ L>2 (S)
... CORRECT. This operation correctly selects rows where the values in column L are greater than 2.

8. To create a new relation with only columns J and L from relation S, which operation would you use?
... Applying a projection operation to select specific columns from relation S.
a) σ J, L (S)
... Incorrect. The sigma symbol is used for selection operations, not for projecting specific columns.
*b) π J, L (S)
... CORRECT. This operation correctly projects columns J and L, creating a new relation with only these columns.
c) π K, M (S)
... Incorrect. This operation projects columns K and M, which doesn't match the requirement.
d) σ J>L (S)
... Incorrect. This operation applies a condition on columns J and L, instead of projecting them.

9. To identify tuples in relation R where column B is equal to column C, which operation would be correct?
... Applying a selection operation to find rows in relation R where two columns have equal values.
*a) σ B=C (R)
... CORRECT. This operation selects rows where the values in columns B and C are equal.
b) σ B≠C (R)
... Incorrect. This operation selects rows where the values in columns B and C are not equal.
c) π B, C (R)
... Incorrect. This operation only projects columns B and C without comparing their values.
d) σ A=C (R)
... Incorrect. This operation compares columns A and C, which is not what we're looking for.

10. To extract the tuples from relation S where column J is less than column L, which operation should you use?
... Here we are applying a selection operation to find rows in relation S that satisfy a specific condition.
a) σ J=L (S)
... Incorrect. This operation selects rows where column J is equal to column L, not less than.
*b) σ J<L (S)
... CORRECT. This operation selects rows where column J is less than column L.
c) π J, L (S)
... Incorrect. This operation only projects columns J and L without comparing their values.
d) σ J>L (S)
... Incorrect. This operation selects rows where column J is greater than column L, which is the opposite of what we're looking for.

11. To identify the tuples in relation R where column A is not equal to 1, which operation should you choose?
... Applying a selection operation to find rows in relation R where column A has values other than 1.
a) σ A=1 (R)
... Incorrect. This operation selects rows where column A is equal to 1, not different from 1.
*b) σ A≠1 (R)
... CORRECT. This operation selects rows where column A is not equal to 1.
c) π A, B (R)
... Incorrect. This operation only projects columns A and B without applying any condition on column A.
d) σ B≠1 (R)
... Incorrect. This operation applies a condition on column B, not column A.

12. To find the tuples in relation S where column M is equal to 2, which operation can be used?
... Applying a selection operation to extract rows from relation S where column M has a specific value.
a) π M=2 (S)
... Incorrect. The pi (π) symbol is used for projection operations, not for selection.
b) σ K=2 (S)
... Incorrect. This operation selects rows based on column K, not column M.
*c) σ M=2 (S)
... CORRECT. This operation selects rows where column M has the value 2.
d) σ L=2 (S)
... Incorrect. This operation selects rows based on column L, not column M.

13. In order to create a new relation with only columns B and C from relation R, which operation should you apply?
... This question tests the application of the projection operation to extract specific columns from a relation.
a) σ B, C (R)
... Incorrect. The sigma symbol is used for selection operations, not for projecting specific columns.
*b) π B, C (R)
... CORRECT. This operation correctly projects columns B and C, creating a new relation with only these columns.
c) π A, B (R)
... Incorrect. This operation projects columns A and B, not columns B and C.
d) σ B>C (R)
... Incorrect. This operation applies a condition on columns B and C, instead of projecting them.

14. To select the rows from relation R where column C is less than 3, which operation is most suitable?
... Here the focus is on applying a selection operation to find rows in relation R that meet a specific criterion.
a) π C<3 (R)
... Incorrect. The pi (π) symbol is used for projection operations, not for selection.
b) σ A<3 (R)
... Incorrect. This operation selects rows based on column A, not column C.
c) σ B<3 (R)
... Incorrect. This operation selects rows based on column B, not column C.
*d) σ C<3 (R)
... CORRECT. This operation correctly selects rows where the values in column C are less than 3.

15. To find the tuples in relation S where column K is equal to 3, which operation can be utilized?
... Applying a selection operation to extract rows from relation S where column K has a specific value.
a) π K=3 (S)
... Incorrect. The pi (π) symbol is used for projection operations, not for selection.
b) σ J=3 (S)
... Incorrect. This operation selects rows based on column J, not column K.
*c) σ K=3 (S)
... CORRECT. This operation selects rows where column K has the value 3.
d) σ L=3 (S)
... Incorrect. This operation selects rows based on column L, not column K.


1. Using the projection operation, how can you retrieve the B and C columns from the Relation R?
... Here, the projection operation is applied to get specific columns from a relation.
*a) π B,C (R)
... CORRECT. This operation retrieves columns B and C from Relation R.
b) π A,B (R)
... Incorrect. This operation retrieves columns A and B, not B and C.
c) σ B,C (R)
... Incorrect. The sigma symbol represents a selection operation, not a projection.
d) π B,C (S)
... Incorrect. This operation would attempt to project columns B and C from Relation S, where these columns do not exist.

2. Which relational algebra operation would help to find rows in Relation R where the values in column B are less than 3?
... In this scenario, you need to apply the selection operation to identify the required rows.
*a) σ B<3 (R)
... CORRECT. This operation will return the rows from Relation R where column B has values less than 3.
b) π B<3 (R)
... Incorrect. The pi symbol is used for projection operations, not selection.
c) σ B>3 (R)
... Incorrect. This operation will return rows where column B has values greater than 3, not less than.
d) σ A<3 (R)
... Incorrect. This operation will select rows based on column A, not column B.


4. What result will you get when you apply the operation σ K=L (S)?
... Here, the selection operation is used to find rows in Relation S where columns K and L have equal values.
a) { (1, 2, 3, 2) }
... Incorrect. In this tuple, the values in columns K and L are not equal.
b) { (2, 1, 2, 3) }
... Incorrect. In this tuple, the values in columns K and L are not equal.
c) { (3, 3, 1, 1) }
... Incorrect. In this tuple, the values in columns K and L are not equal.
*d) { empty set }
... CORRECT. No tuples in Relation S have equal values in columns K and L.

5. If you apply the operation π A,C (σ B=4 (R)), what will be the result?
... Here, a projection operation is applied to the result of a selection operation to get specific columns from selected rows.
*a) { (4, 4) }
... CORRECT. This operation first selects the row where column B equals 4, and then projects columns A and C.
b) { (3, 3) }
... Incorrect. No row in Relation R has both B and C values as 3.
c) { (4, 3) }
... Incorrect. The tuple does not match the values from the appropriate row in Relation R.
d) { (1, 2) }
... Incorrect. This tuple does not represent any row in Relation R.

6. What result would you obtain by applying the operation σ M=1 (S)?
... This operation applies a selection over Relation S based on the condition in column M.
*a) { (3, 3, 1, 1) }
... CORRECT. This tuple meets the condition M=1 in Relation S.
b) { (1, 2, 3, 2) }
... Incorrect. The value in column M is not 1 in this tuple.
c) { (2, 1, 2, 3) }
... Incorrect. The value in column M is not 1 in this tuple.
d) { (4, 4, 4, 4) }
... Incorrect. This tuple does not exist in Relation S.

7. Which operation can be used to get tuples from Relation S where column J is less than column L?
... This operation uses a selection with a specific condition to extract tuples from Relation S.
*a) σ J<L (S)
... CORRECT. This operation will return rows where the values in column J are less than those in column L.
b) σ J>L (S)
... Incorrect. This operation would return rows where column J has values greater than those in column L.
c) σ J=L (S)
... Incorrect. This operation would return rows where columns J and L have equal values, which is not what is being asked.
d) π J<L (S)
... Incorrect. This operation is not valid because the pi symbol is used for projection, not selection.

8. If you perform the operation σ B≠4 (R), what would be the output?
... This operation uses a selection to extract tuples where the value in column B is not equal to 4.
*a) { (1, 3, 2), (2, 2, 1), (3, 1, 3) }
... CORRECT. These tuples satisfy the condition B≠4 from Relation R.
b) { (1, 3, 2), (4, 4, 4) }
... Incorrect. The tuple (4, 4, 4) does not satisfy the condition B≠4.
c) { (2, 2, 1), (4, 4, 4) }
... Incorrect. The tuple (4, 4, 4) does not satisfy the condition B≠4.
d) { (4, 4, 4) }
... Incorrect. This tuple doesn't meet the selection condition as the value in column B is 4.

9. How can you obtain the tuples from Relation R where the value in column A is either 2 or 3?
... This operation employs a selection condition to extract specific tuples from Relation R.
*a) σ A=2 ∨ A=3 (R)
... CORRECT. This operation will return the rows where the values in column A are either 2 or 3.
b) σ A=1 ∨ A=4 (R)
... Incorrect. This operation would return rows where the values in column A are either 1 or 4, not 2 or 3.
c) π A=2 ∨ A=3 (R)
... Incorrect. This operation is not valid because the pi symbol is used for projection, not selection.
d) σ A=2 ∧ A=3 (R)
... Incorrect. This operation would not return any rows since no value in column A can be both 2 and 3 at the same time.

10. What would be the result of applying the operation π K,M (σ J=1 (S))?
... Here, a projection operation is applied to the result of a selection operation.
*a) { (2, 2) }
... CORRECT. This operation first selects the row where column J equals 1, and then projects columns K and M.
b) { (1, 3) }
... Incorrect. The tuple does not represent the correct values from the projected columns in the selected row.
c) { (3, 1) }
... Incorrect. The tuple does not represent any row in Relation S.
d) { (1, 2) }
... Incorrect. This tuple does not represent any row in Relation S.

11. What would be the result of applying the operation π J,M (σ K=3 (S))?
... This scenario requires applying a projection operation after performing a selection operation on Relation S.
*a) { (3, 1) }
... CORRECT. This operation first selects the row where column K equals 3, and then projects columns J and M.
b) { (1, 2) }
... Incorrect. This tuple doesn't match the values in the selected row from Relation S.
c) { (2, 3) }
... Incorrect. This tuple doesn't represent any row in Relation S.
d) { (1, 3) }
... Incorrect. This tuple doesn't represent the values from the projected columns in the selected row.

12. If you perform the operation σ B+C=5 (R), which tuples would be in the result?
... This involves applying a selection operation with a specific condition that involves two columns.
*a) { (1, 3, 2) }
... CORRECT. This tuple from Relation R satisfy the condition B+C=5.
b) { (2, 2, 1) }
... Incorrect. This tuple from Relation R doesn't satisfy the condition B+C=5.
c) { (4, 4, 4) }
... Incorrect. This tuple from Relation R doesn't satisfy the condition B+C=5.
d) { (1, 3, 2), (2, 2, 1) }
... Incorrect. One of the tuples in this set doesn't satisfy the condition B+C=5.

13. Using relational algebra, how can you extract rows from Relation S where column K is equal to 2?
... This question involves applying a selection operation to extract specific rows from Relation S.
*a) σ K=2 (S)
... CORRECT. This operation would extract rows from Relation S where column K equals 2.
b) σ K=1 (S)
... Incorrect. This operation would extract rows where column K equals 1, not 2.
c) π K=2 (S)
... Incorrect. The pi symbol denotes projection operation, not selection.
d) σ K≠2 (S)
... Incorrect. This operation would extract rows where column K is not equal to 2.

14. What is the result of the operation σ A>B (R)?
... Here, a selection operation is being applied to find rows in Relation R where column A has values greater than column B.
*a) { (3, 1, 3) }
... CORRECT. This tuple satisfies the condition A>B in Relation R.
b) { (2, 2, 1) }
... Incorrect. The values in columns A and B are equal in this tuple.
c) { (1, 3, 2) }
... Incorrect. Column A is less than column B in this tuple.
d) { (4, 4, 4) }
... Incorrect. The values in columns A and B are equal in this tuple.

15. What will be the outcome of the operation π A,B (σ C=4 (R))?
... This question involves applying a projection operation on the results of a selection operation on Relation R.
*a) { (4, 4) }
... CORRECT. This operation selects the row where column C equals 4, and then projects columns A and B.
b) { (1, 3) }
... Incorrect. This tuple does not represent the projected values from the selected row in Relation R.
c) { (3, 1) }
... Incorrect. This tuple does not represent any row in Relation R.
d) { (2, 2) }
... Incorrect. This tuple does not represent any row in Relation R.


16. What would be the result of applying the operation π J,L (σ K≠2 (S))?
... This involves applying a projection operation on the outcome of a selection operation on Relation S.
a) { (1, 3), (3, 1) }
... Incorrect. The first tuple in this set is from the row where K is equal to 2.
b) { (1, 3), (2, 2) }
... Incorrect. One of the tuples in this set doesn't match the values from the projected columns in the selected rows.
*c) { (2, 2), (3, 1) }
... CORRECT. This operation first selects rows where column K is not equal to 2, and then projects columns J and L.
d) { (2, 3) }
... Incorrect. This tuple doesn't represent any row in Relation S.

18. If you perform the operation π A,C (σ B=2 (R)), what would be the result?
... Here, a projection operation is being applied to the result of a selection operation from Relation R.
*a) { (2, 1) }
... CORRECT. This operation selects the row where column B equals 2, and then projects columns A and C.
b) { (1, 2) }
... Incorrect. This tuple doesn't represent the projected columns from the selected row in Relation R.
c) { (3, 3) }
... Incorrect. This tuple doesn't represent any row in Relation R.
d) { (4, 4) }
... Incorrect. This tuple doesn't represent any row in Relation R.

19. Which operation would give you the rows from Relation S where column L is greater than column M?
... This operation involves applying a selection to extract rows where the values in column L are greater than those in column M.
*a) σ L>M (S)
... CORRECT. This operation will return rows where column L values are greater than column M values in Relation S.
b) σ L<M (S)
... Incorrect. This operation would return rows where column L values are less than column M values, which is not the asked condition.
c) π L>M (S)
... Incorrect. The pi symbol denotes a projection operation, not a selection.
d) σ L=M (S)
... Incorrect. This operation would return rows where column L values are equal to column M values, not greater than.

20. What will be the outcome of the operation π B,C (σ A=4 (R))?
... This question involves applying a projection operation after performing a selection operation on Relation R.
*a) { (4, 4) }
... CORRECT. This operation selects the row where column A equals 4, and then projects columns B and C.
b) { (3, 2) }
... Incorrect. This tuple doesn't represent the projected columns from the selected row in Relation R.
c) { (2, 1) }
... Incorrect. This tuple doesn't represent any row in Relation R.
d) { (1, 3) }
... Incorrect. This tuple doesn't represent any row in Relation R.

