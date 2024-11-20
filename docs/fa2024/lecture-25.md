# Subqueries and WITH 2

Monday - Nov 18, 2024

## Housekeeping

<div class="columns">

<div class="column" width="9%">

</div>

<div class="column" width="45%">

### Discussion items

- CMSC 427 - User Interfaces - Spring 2025

- <a
  href="https://virginiacommonwealth.instructure.com/courses/105097/assignments/966534"
  target="_blank">Homework 8 - WB Regions and Income - due 11/17</a>

- <a
  href="https://virginiacommonwealth.instructure.com/courses/105097/assignments/1047918"
  target="_blank">Homework 9 - WB Population Analysis - due 12/8</a>

- <a
  href="https://virginiacommonwealth.instructure.com/courses/105097/assignments/966535"
  target="_blank">Keep working on your semester project!!!</a>

</div>

<div class="column" width="40%">

### Lecture topics

- [Homework 8 discussion](#homework-8-discussion)

</div>

</div>

<div style="margin-top:25px">

 

</div>

    <style></style>
    <div class='upcoming-calendar'>

| Module | Week | Date | Day | Lectures | Deliverables/Notes |
|:--:|:--:|:--:|:--:|----|----|
| Adv. SQL | 14 | 11/18 | Mon | MTG25: L25 (Subqueries and WITH 2) |  |
| Adv. SQL | 14 | 11/20 | Wed | MTG26: L26 (Views and Indexes) |  |
| (break) | 15 | 11/25 | Mon |  | Fall break (11/25-11/29) |
| Adv. SQL | 16 | 12/2 | Mon | MTG27: L27 (Procedures and Functions) |  |
| Adv. SQL | 16 | 12/4 | Wed | MTG28: L28 (Triggers) |  |
| Adv. SQL | 16 | 12/8 | Sun |  | HW9 due (Even more on SQL) |
| Adv. SQL | 17 | 12/9 | Mon | MTG29: L29 (Security) | PrjDel 12 due (Phase 2 submission); HW10 due (Course evaluation); Last day of class |
| Adv. SQL | 17 | 12/14 | Sat |  | Commencement |

</div>

## We are here

<img src="lecture-25_files\figure-commonmark\mermaid-figure-1.png"
style="width:11.93in;height:2.54in" />

# Homework 8 discussion

## Homework 8 discussion

<div class="columns">

<div class="column" width="60%">

<a
href="https://virginiacommonwealth.instructure.com/courses/105097/assignments/966534"
target="_blank"><img src="./assets/homework8-page.png" /></a>

</div>

<div class="column" width="40%">

### Learning Objectives

- A full exploration of `SELECT`

- A full exploration of subqueries and CTEs

- Introduction to data analysis

### Data Source

- <a href="https://data.worldbank.org/indicator" target="_blank">World
  Bank Indicators</a>

</div>

</div>

<center>
We’ll jump to the command line to get the project started!
</center>

## Housekeeping

<div class="columns">

<div class="column" width="9%">

</div>

<div class="column" width="45%">

### Discussion items

- CMSC 427 - User Interfaces - Spring 2025

- <a
  href="https://virginiacommonwealth.instructure.com/courses/105097/assignments/966534"
  target="_blank">Homework 8 - WB Regions and Income - due 11/17</a>

- <a
  href="https://virginiacommonwealth.instructure.com/courses/105097/assignments/1047918"
  target="_blank">Homework 9 - WB Population Analysis - due 12/8</a>

- <a
  href="https://virginiacommonwealth.instructure.com/courses/105097/assignments/966535"
  target="_blank">Keep working on your semester project!!!</a>

</div>

<div class="column" width="40%">

### Lecture topics

- [Homework 8 discussion](#homework-8-discussion)

</div>

</div>

<div style="margin-top:25px">

 

</div>

    <style></style>
    <div class='upcoming-calendar'>

| Module | Week | Date | Day | Lectures | Deliverables/Notes |
|:--:|:--:|:--:|:--:|----|----|
| Adv. SQL | 14 | 11/18 | Mon | MTG25: L25 (Subqueries and WITH 2) |  |
| Adv. SQL | 14 | 11/20 | Wed | MTG26: L26 (Views and Indexes) |  |
| (break) | 15 | 11/25 | Mon |  | Fall break (11/25-11/29) |
| Adv. SQL | 16 | 12/2 | Mon | MTG27: L27 (Procedures and Functions) |  |
| Adv. SQL | 16 | 12/4 | Wed | MTG28: L28 (Triggers) |  |
| Adv. SQL | 16 | 12/8 | Sun |  | HW9 due (Even more on SQL) |
| Adv. SQL | 17 | 12/9 | Mon | MTG29: L29 (Security) | PrjDel 12 due (Phase 2 submission); HW10 due (Course evaluation); Last day of class |
| Adv. SQL | 17 | 12/14 | Sat |  | Commencement |

</div>
