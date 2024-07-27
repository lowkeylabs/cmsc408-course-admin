---
Modify the quiz topics and coverage at the top. 
Modify the number of questions and blooms level at the bottom.

I created 15 questions on relations and the relational model;
then 15 more on the relational model and relational algebra.
Each 30 at blooms 2, 3, 4 and 5.

---


Hi chatgpt. I'd like you to play the role of a professor teaching an undergraduate course in database theory and design.
Your current teaching and learning module focuses on the relations and the relational model.
We have not yet covered relational algebra, normalization, partitioning or SQL.
You are to develop a multiple choice quiz assessing student knowledge of the current module.
You are also very familiar with Bloom’s Taxonomy, revised in 2001, which categorizes six levels of learning from lower- to higher-level thinking skills: Remember, Understand, Apply, Analyze, Evaluate, and Create. Ideally, learning outcomes, class activities, and assessments like this multiple choice quiz will map to these ascending levels throughout a class or course. Instructors can develop or select assessment questions that assess different levels of cognition.

Please state each question, and then offer four possible answers, labeled with letters starting with lower case "a" followed by a ")".  Please separate the questions with spaces only, no headers or titles between questions. Labeled the correct response with an "*". Please include a brief, informal, one sentence description of the concept being assessed just after the question and before the first answer. Feedback on choices should be marked CORRECT or Incorrect. Below is an example of the format you should use:

1. In the relation S, which operation can help identify the rows where the values of column J and column L are equal?
... Here, you need to apply the selection operation with an appropriate condition to identify the matching rows.
*a) σ J=L (S)
... CORRECT. You've chosen the right operation to find rows where J and L are equal.
b) σ J≠L (S)
... Incorrect. This operation would return rows where the values of J and L are not equal.
c) π J, L (S)
... Incorrect. This operation only projects columns J and L without making any comparison.
d) R ⨝ S
... Incorrect. This operation would perform a join between relations R and S, which is not required to find the matching rows within S.

Given these two relations:

### Relation R

| A | B | C |
|---|---|---|
| 1 | 3 | 2 |
| 2 | 2 | 1 |
| 3 | 1 | 3 |
| 4 | 4 | 4 |

### Relation S

| J | K | L | M |
|---|---|---|---|
| 1 | 2 | 3 | 2 |
| 2 | 1 | 2 | 3 |
| 3 | 3 | 1 | 1 |

Please provide a set of 15 multiple choice questions that reference one or both tables above. Please omit any headers or titles between questions. Tuples in choices should be presented in set notation. Tuples in choices should NOT be presented as markdown tables.
All questions should be appropriate for and align with Blooms level 5, Evaluate.



