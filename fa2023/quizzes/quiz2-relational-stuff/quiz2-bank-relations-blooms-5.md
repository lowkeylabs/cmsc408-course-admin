Quiz title: Quiz 2 - Relations, relational model and relational algebra - Blooms 5, Evaluate.
Quiz description: This quiz focuses on Relations, relational model and relational algebra.




1. Considering the patterns and distribution of values in columns A and B of relation R, which operation would you use to find tuples where values in column A are greater than those in column B?
... You need to critically evaluate the patterns and distributions to choose the correct operation to find the required tuples.
*a) σ A>B (R)
... CORRECT. This operation will filter the rows where values in column A are greater than those in column B.
b) σ A<B (R)
... Incorrect. This would find rows where values in column A are less than those in column B.
c) σ A=B (R)
... Incorrect. This would find rows where the values in columns A and B are equal.
d) π A, B (R)
... Incorrect. This operation will only project columns A and B without comparing the values.

2. Based on the distribution of values in relations R and S, which operation could you use to find the tuples in R that have the same values in column A as the values in column J in relation S? [NOTE this is a THETA JOIN not a natural join. Don't be confused!]
... You need to critically evaluate and recognize the similarity in column values to select the appropriate operation.
*a) R ⨝ (A=J) S
... CORRECT. This operation performs a join on conditions where values in column A of R are equal to values in column J of S.
b) R ⨝ (B=K) S
... Incorrect. This would join based on values in column B of R and column K of S, which isn't the comparison sought.
c) R ⨝ (C=L) S
... Incorrect. This would join based on values in column C of R and column L of S, which isn't the comparison sought.
d) π A, J (R, S)
... Incorrect. This would only project columns A and J without performing any comparison or join operation.

3. Examining the relations R and S, which operation would you use to find tuples in S where the values in columns J and M are equal?
... You're evaluating the column values in relation S to select the right operation for finding tuples with equal values in columns J and M.
*a) σ J=M (S)
... CORRECT. This operation will help in finding rows where the values in columns J and M are equal.
b) σ K=M (S)
... Incorrect. This operation will find rows where values in columns K and M are equal, which is not what is being sought.
c) π J, M (S)
... Incorrect. This operation will only project columns J and M, without comparing the values.
d) σ J≠M (S)
... Incorrect. This operation will find rows where values in columns J and M are not equal.

4. Observing the patterns in the columns of relation R, which operation could be used to find tuples where values in column B are greater than those in column C?
... This involves evaluating the column values in relation R to select the appropriate operation for finding tuples where values in column B are greater than those in column C.
*a) σ B>C (R)
... CORRECT. This operation correctly identifies the rows where column B values are greater than column C values.
b) σ B<C (R)
... Incorrect. This would find rows where values in column B are less than those in column C.
c) σ B=C (R)
... Incorrect. This would find rows where the values in columns B and C are equal.
d) π B, C (R)
... Incorrect. This operation only projects columns B and C without comparing the values.

5. Given the relations R and S, which operation would help in identifying tuples in S where values in column K are not equal to values in column L?
... You have to evaluate the column values in relation S and select the correct operation to find tuples where values in column K are not equal to those in column L.
*a) σ K≠L (S)
... CORRECT. This operation correctly identifies rows where values in columns K and L are not equal.
b) σ J≠L (S)
... Incorrect. This operation identifies rows where values in columns J and L are not equal, which is not what we are looking for.
c) σ K=L (S)
... Incorrect. This operation identifies rows where values in columns K and L are equal, which is opposite of what is being sought.
d) π K, L (S)
... Incorrect. This operation projects columns K and L without performing any comparison between the values.

6. After scrutinizing relations R and S, which operation would assist in finding tuples in S where the sum of the values in columns K and M is equal to the values in column J?
... You need to critically evaluate the relations and conceive an operation that filters tuples based on the sum of column values.
*a) σ K+M=J (S)
... CORRECT. This operation filters the rows where the sum of values in columns K and M equals the values in column J.
b) σ K+L=J (S)
... Incorrect. This operation considers the sum of values in columns K and L instead of K and M to compare with column J.
c) σ J+M=K (S)
... Incorrect. This operation forms a condition where the sum of columns J and M is compared to column K, which isn't the sought comparison.
d) π K, M, J (S)
... Incorrect. This operation only projects columns K, M, and J without performing any comparison between values.

7. Analyzing the relations R and S, which operation would be suitable to find tuples in R where values in column C are less than values in column A?
... Analyze the distribution of values in columns C and A of relation R to select the appropriate operation for finding the required tuples.
*a) σ C<A (R)
... CORRECT. This operation will find the rows where values in column C are less than those in column A.
b) σ C>A (R)
... Incorrect. This operation finds rows where values in column C are greater than those in column A, which isn't what is required.
c) σ C=A (R)
... Incorrect. This operation finds rows where values in column C are equal to those in column A.
d) π C, A (R)
... Incorrect. This operation only projects columns C and A, without making any comparison between the values.

8. While examining relations R and S, which operation would you use to find tuples where values in column B of relation R are equal to the values in column K of relation S?
... You need to evaluate the columns across both relations to find the suitable operation that joins them based on the mentioned condition.
*a) R ⨝ (B=K) S
... CORRECT. This operation performs a theta join where values in column B of R are equal to values in column K of S.
b) R ⨝ (A=J) S
... Incorrect. This operation would theta join the relations based on a comparison between columns A and J, which is not the desired comparison.
c) R ⨝ (C=L) S
... Incorrect. This operation would theta join the relations based on a comparison between columns C and L, which is not the desired comparison.
d) π B, K (R, S)
... Incorrect. This would only project columns B and K without performing any comparison or join operation.

9. Based on your evaluation of relations R and S, which operation would find tuples where values in column B of relation R are less than values in column L of relation S? [THETA JOIN]
... This involves critically evaluating the relations to select the appropriate operation to find tuples meeting the specified condition.
*a) R ⨝ (B<L) S
... CORRECT. This operation correctly identifies the tuples where values in column B of R are less than those in column L of S.
b) R ⨝ (B>K) S
... Incorrect. This operation identifies tuples where column B values in R are greater than column K values in S, not what is sought.
c) R ⨝ (B=L) S
... Incorrect. This operation identifies tuples where column B values in R are equal to column L values in S, not what is sought.
d) π B, L (R, S)
... Incorrect. This operation only projects columns B and L without performing any comparison between the values.

10. When examining the distribution of values in columns B and C of relation R, which operation would yield tuples where the values in column B are not equal to those in column C?
... Critically evaluate the values in columns B and C of relation R to select the correct operation for finding the tuples where values in column B are not equal to those in column C.
*a) σ B≠C (R)
... CORRECT. This operation correctly finds rows where values in column B are not equal to those in column C.
b) σ B=C (R)
... Incorrect. This operation would find rows where values in column B are equal to those in column C.
c) σ B<C (R)
... Incorrect. This operation would find rows where values in column B are less than those in column C.
d) π B, C (R)
... Incorrect. This operation only projects columns B and C, without comparing the values.


11. In critically evaluating relations R and S, which operation would be beneficial in finding tuples where the sum of values in columns A and B in relation R are equal to the values in column L of relation S?
... This question requires a deep evaluation to establish an operation that cross-relates the sum of column values in one relation with a column in another.
*a) R ⨝ (A+B=L) S
... CORRECT. This operation correctly identifies tuples where the sum of values in columns A and B in R equals the values in column L in S.
b) R ⨝ (A+B=K) S
... Incorrect. This operation compares the sum of columns A and B in R with column K in S, which isn't the desired comparison.
c) R ⨝ (B+C=L) S
... Incorrect. This operation compares the sum of columns B and C in R with column L in S, which isn't the sought condition.
d) π A, B, L (R, S)
... Incorrect. This operation only projects columns A, B, and L without performing any comparison between the values.

12. After examining the relations R and S, which operation would be most effective in finding tuples in S where values in column M are greater than values in column K?
... Evaluate the column values in relation S to choose the right operation for finding tuples where values in column M are greater than those in column K.
*a) σ M>K (S)
... CORRECT. This operation will find rows where values in column M are greater than those in column K.
b) σ M<K (S)
... Incorrect. This operation would find rows where values in column M are less than those in column K, which isn't the desired outcome.
c) σ M=K (S)
... Incorrect. This operation would find rows where values in column M are equal to those in column K.
d) π M, K (S)
... Incorrect. This operation only projects columns M and K without comparing the values.

13. Upon evaluating the values in relation R, which operation would help to identify tuples where values in column A are equal to the sum of values in columns B and C?
... This question involves a deep evaluation to formulate an operation that filters tuples based on a condition involving a sum of column values in the same relation.
*a) σ A=B+C (R)
... CORRECT. This operation correctly identifies the tuples where values in column A are equal to the sum of values in columns B and C.
b) σ A=B-C (R)
... Incorrect. This operation identifies tuples where column A values are equal to the difference between columns B and C, which is not what is sought.
c) σ A=B×C (R)
... Incorrect. This operation identifies tuples where column A values are equal to the product of columns B and C, which is not the intended comparison.
d) π A, B, C (R)
... Incorrect. This operation only projects columns A, B, and C without performing any comparison of values.

14. Given your analysis of relations R and S, which operation would be effective in finding tuples where the value in column A of relation R is less than the value in column J of relation S? [THETA JOIN]
... You need to evaluate the relations to devise an operation that cross-compares column values between the two relations under the specified condition.
*a) R ⨝ (A<J) S
... CORRECT. This operation performs a join that identifies tuples where the values in column A of R are less than those in column J of S.
b) R ⨝ (A=J) S
... Incorrect. This operation would find tuples where values in column A of R are equal to those in column J of S, which isn't the sought condition.
c) R ⨝ (A>J) S
... Incorrect. This operation would find tuples where values in column A of R are greater than those in column J of S, contrary to the condition given.
d) π A, J (R, S)
... Incorrect. This operation only projects columns A and J without performing any comparison between the values.

15. When examining relations R and S closely, which operation would assist in finding tuples in R where the product of values in columns B and C is equal to the values in column A?
... This question demands a critical analysis to create an operation that identifies tuples based on the product of column values within the same relation.
*a) σ B×C=A (R)
... CORRECT. This operation will find rows where the product of values in columns B and C equals the values in column A.
b) σ B+C=A (R)
... Incorrect. This operation identifies rows where the sum of columns B and C equals column A, not what is sought.
c) σ B-C=A (R)
... Incorrect. This operation identifies rows where the difference between columns B and C equals column A, not what is sought.
d) π B, C, A (R)
... Incorrect. This operation only projects columns B, C, and A without comparing the values.






1. Given the relations R and S, which of the following expressions would yield a result set that contains tuples with values from columns A, B, and K where the values in column A are equal to the values in column J?
... Here, students need to identify the correct relational algebra operation to find tuples satisfying the mentioned condition.
*a) π A,B,K (σ A=J (R × S))
... CORRECT. You've chosen the right combination of operations to find tuples where column A values are equal to column J values, and project columns A, B, and K.
b) π A,B,K (σ A≠J (R × S))
... Incorrect. This expression filters tuples where column A values are not equal to column J values.
c) π A,B,K (σ A=K (R × S))
... Incorrect. This expression filters tuples where column A values are equal to column K values, which was not the requirement.
d) π A,B,K (R × S)
... Incorrect. This expression doesn't include a selection condition to filter tuples where column A values are equal to column J values.


3. What will be the output when executing the relational algebra expression σ B=2 (R)?
... Here, students must evaluate which tuples satisfy the condition B=2 in relation R.
a) {(1, 3, 2), (3, 1, 3)}
... Incorrect. These tuples don't satisfy the condition B=2.
*b) {(2, 2, 1)}
... CORRECT. This tuple satisfies the condition B=2 in relation R.
c) {(1, 3, 2)}
... Incorrect. This tuple doesn't satisfy the condition B=2.
d) {(4, 4, 4)}
... Incorrect. This tuple doesn't satisfy the condition B=2.

4. If you want to find tuples in relation S where the sum of columns K and L is greater than the value in column M, which relational algebra expression would you use?
... Here, students need to determine the correct relational algebra expression to find tuples satisfying the condition mentioned.
*a) σ K+L>M (S)
... CORRECT. This is the right expression to find tuples where the sum of columns K and L is greater than the value in column M in relation S.
b) σ K+L<M (S)
... Incorrect. This expression finds tuples where the sum of columns K and L is less than the value in column M.
c) σ K+L=M (S)
... Incorrect. This expression finds tuples where the sum of columns K and L is equal to the value in column M.
d) σ K-L>M (S)
... Incorrect. This expression finds tuples where the difference between columns K and L is greater than the value in column M.

5. Which relational algebra operation can be used to find tuples in relation R where the value in column B is neither 1 nor 4?
... Here, students need to identify the relational algebra expression that can correctly filter the tuples satisfying the given condition.
a) σ B=1∨B=4 (R)
... Incorrect. This expression will return tuples where the value in column B is either 1 or 4, not the ones excluding these values.
*b) σ B≠1∧B≠4 (R)
... CORRECT. This is the correct expression to find tuples where the value in column B is neither 1 nor 4.
c) σ B>1∧B<4 (R)
... Incorrect. This expression finds tuples where the value in column B is between 1 and 4, which includes values other than 1 and 4 but excludes the possibility of other values outside this range.
d) σ B<1∨B>4 (R)
... Incorrect. This expression finds tuples where the value in column B is less than 1 or greater than 4, which does not satisfy the condition.

6. Evaluating the following relational algebra expression, π J, M (σ K=L (S)), which set of tuples would be the result?
... Here, students must evaluate the correct set of tuples from the projection operation following the selection operation.
a) {(1, 2), (2, 3)}
... Incorrect. These tuples do not satisfy the condition K=L in relation S.
*b) { empty }
... CORRECT. There are no tuples in relation S that satisfy the condition K=L.
c) {(1, 2), (3, 1)}
... Incorrect. The inclusion of the first tuple is incorrect, as it does not satisfy the condition K=L.
d) {(2, 3), (3, 1)}
... Incorrect. The inclusion of the first tuple is incorrect, as it does not satisfy the condition K=L.

7. Given the relations R and S, which relational algebra expression would correctly give a set of tuples containing values from columns A and B where column A values are equal to column L values from relation S?
... Here, students need to create an expression to find tuples with values in column A matching column L values from relation S.
*a) π A,B (σ A=L (R × S))
... CORRECT. You've created the correct combination of operations to find tuples where column A values are equal to column L values from relation S, and project columns A and B.
b) π A,B (σ A=J (R × S))
... Incorrect. This expression filters tuples where column A values are equal to column J values from relation S.
c) π A,B (σ A=K (R × S))
... Incorrect. This expression filters tuples where column A values are equal to column K values from relation S.
d) π A,B (R × S)
... Incorrect. This expression doesn't include a selection condition to filter tuples based on column A and column L values from relation S.

8. Considering the operation σ B+C>5 (R), which of the following set of tuples would be the result?
... Here, students need to evaluate the tuples that would result from the selection operation with the given condition on relation R.
a) {(1, 3, 2), (2, 2, 1)}
... Incorrect. These tuples don't satisfy the condition B+C>5 in relation R.
b) {(3, 1, 3)}
... Incorrect. This tuple doesn't satisfy the condition B+C>5 in relation R.
*c) {(4, 4, 4)}
... CORRECT. This tuple satisfies the condition B+C>5 in relation R.
d) {(1, 3, 2), (4, 4, 4)}
... Incorrect. The inclusion of the first tuple is incorrect as it does not satisfy the condition B+C>5.

9. What is the result of executing the relational algebra expression π A, B (σ B>2 (R))?
... Here, students are tasked with evaluating which tuples satisfy the selection operation and then the projection from relation R.
*a) {(1, 3), (4, 4)}
... CORRECT. These tuples are the result of the selection and projection operations applied to relation R with the specified condition.
b) {(1, 3), (2, 2)}
... Incorrect. The second tuple does not satisfy the condition B>2.
c) {(2, 2), (3, 1)}
... Incorrect. None of these tuples satisfy the condition B>2.
d) {(3, 1), (4, 4)}
... Incorrect. The first tuple does not satisfy the condition B>2.

10. If you want to find tuples in relation S where column L is equal to column M, which relational algebra expression would correctly give the result?
... Here, students are expected to identify the correct relational algebra expression for selecting tuples satisfying the given condition in relation S.
a) σ L>M (S)
... Incorrect. This expression finds tuples where column L values are greater than column M values, which was not the requirement.
b) σ L<M (S)
... Incorrect. This expression finds tuples where column L values are less than column M values, which was not the requirement.
*c) σ L=M (S)
... CORRECT. This is the correct expression to find tuples where column L values are equal to column M values in relation S.
d) σ L≠M (S)
... Incorrect. This expression finds tuples where column L values are not equal to column M values, which was not the requirement.

11. Which relational algebra expression would correctly yield a set of tuples where values from columns A and C from relation R are joined with values from columns J and L from relation S, based on the condition A = J?
... Here, students need to construct an appropriate relational algebra expression that performs the specified join and projects the mentioned columns.
*a) π A,C,J,L (σ A=J (R × S))
... CORRECT.  This expression select tuple combos from R and S where A=J and then returns columns A, C, J and L from the resulting relation.
b) π A,C,J,L (R ⨝ S)
... Incorrect.  A natural join between R and S would result in an empty set.
c) π A,C,J,K (R × S)
... Incorrect. This expression projects column K instead of column L from relation S.
d) π A,B,J,L (R × S)
... Incorrect. This expression projects column B instead of column C from relation R.

12. Evaluating the relational algebra expression π J, K (σ K>L (S)), what would be the correct set of resulting tuples?
... Here, students need to identify the set of tuples that satisfy the selection condition and then are projected based on the mentioned columns from relation S.
a) {(1, 2), (2, 1)}
... Incorrect. These tuples do not satisfy the condition K>L in relation S.
b) {(2, 1)}
... Incorrect. This tuple does not satisfy the condition K>L in relation S.
c) {(1, 2)}
... Incorrect. This tuple does not satisfy the condition K>L in relation S.
*d) {(3, 3)}
... CORRECT. This tuple satisfies the condition K>L in relation S and is correctly projected.

13. Given the relations R and S, which relational algebra expression would generate a set of tuples with values from columns B and C where column B values from R are equal to column K values from S?
... Here, students need to develop a correct expression that selects tuples based on the given condition and projects the specified columns.
*a) π B,C (σ B=K (R × S))
... CORRECT. This is the correct expression that finds tuples where column B values from R are equal to column K values from S, and then projects columns B and C.
b) π B,C (σ B=L (R × S))
... Incorrect. This expression selects tuples where column B values from R are equal to column L values from S, which is not the requirement.
c) π B,C (σ B=J (R × S))
... Incorrect. This expression selects tuples where column B values from R are equal to column J values from S, which is not the requirement.
d) π B,C (R × S)
... Incorrect. This expression doesn't include a selection condition to filter tuples based on the column B from R and column K from S.

14. If you were to find tuples from relation R where the value in column C is equal to 4, which relational algebra expression would be the correct choice?
... Here, students are tasked to identify the appropriate relational algebra expression to find tuples satisfying the given condition in relation R.
*a) σ C=4 (R)
... CORRECT. This is the right expression to find tuples where column C values are equal to 4 in relation R.
b) σ C≠4 (R)
... Incorrect. This expression would select tuples where column C values are not equal to 4, which is not the requirement.
c) σ C>4 (R)
... Incorrect. This expression would select tuples where column C values are greater than 4, which is not the requirement.
d) σ C<4 (R)
... Incorrect. This expression would select tuples where column C values are less than 4, which is not the requirement.

15. What would be the output of the operation π A,B (σ B+C=8 (R))?
... Here, students need to evaluate which set of tuples from relation R satisfies the selection operation followed by the projection operation.
a) {(1, 3), (2, 2)}
... Incorrect. These tuples do not satisfy the condition B+C=8 in relation R.
b) {(3, 1), (4, 4)}
... Incorrect. The first tuple does not satisfy the condition B+C=8 in relation R.
*c) {(4, 4)}
... CORRECT. This tuple satisfies the condition B+C=8 in relation R and is projected correctly.
d) {(1, 3), (4, 4)}
... Incorrect. The inclusion of the first tuple is incorrect, as it does not satisfy the condition B+C=8 in relation R.

