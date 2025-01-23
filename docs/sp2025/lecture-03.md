# Entity-relation models

Tuesday - Jan 21, 2025

## Housekeeping

<div class="columns">

<div class="column" width="1%">

</div>

<div class="column" width="55%">

### Discussion items

- [Deliverable 1 -
  Intros](https://virginiacommonwealth.instructure.com/courses/113813/assignments/1072356) -
  Find a partner! (past due!)

- [Deliverable 2 - Team
  Formation](https://virginiacommonwealth.instructure.com/courses/113813/quizzes/218307) -
  Tell me your team (Due Sun)

- [Discussion 1 - ER
  Modeling](https://virginiacommonwealth.instructure.com/courses/113813/assignments/1075913) -
  Talking ER models (due Sun)

- [Homework 1 - DE Tool
  Review](https://virginiacommonwealth.instructure.com/courses/113813/assignments/1072333) -
  Practice with Quarto (due Sun)

- [Practice Quiz 1 - ER
  Models](https://virginiacommonwealth.instructure.com/courses/113813/quizzes/211170) -
  (Due Wed … but …)

- [Quiz 1 - ER
  Models](https://virginiacommonwealth.instructure.com/courses/113813/quizzes/211165) -
  (Due Next Thu)

- [Study
  Guide](https://lowkeylabs.github.io/cmsc408-course-admin/guide/er-models/) -
  Lecture notes and study guide.

</div>

<div class="column" width="30%">

### Lecture topics

- [Practice Quiz 1 Walkthrough](#practice-quiz-1-walkthrough)

- [Homework 1 - DE Tool Review](#homework-1---de-tool-review)

- [Overview of DB design](#overview-of-database-design)

</div>

</div>

<div style="margin-top:25px">

 

</div>

    <style></style>
    <div class='upcoming-calendar'>

| Module | Week | Date | Day | Notes and Lectures | Activities and due dates |
|:--:|:--:|:--:|:--:|----|----|
| ER Models | 2 | 1/21 | Tue | L3:Entity-relation models |  |
| ER Models | 2 | 1/23 | Thu | L4:ER Models | PQ1:Entity-relation models |
| ER Models | 2 | 1/26 | Sun |  | HW1:DE Tool Review; Prj2:Team formation; Dis1:ER modeling |
| ER Models | 3 | 1/28 | Tue | L5:Relational models 1 |  |
| ER Models | 3 | 1/30 | Thu | L6:Relational models 2 | Q1:Entity-relation models |
| ER Models | 3 | 2/2 | Sun |  | Prj3:Ideation |
| Relational Alg. | 4 | 2/4 | Tue | L7:Relational Algebra 1 | PQ2:Relational Algebra; HW2:Entity Relation Models |
| Relational Alg. | 4 | 2/6 | Thu | L8:Relational Algebra 2 |  |

</div>

<!-- lecture-block-begin -->

# Practice 1 Quiz Walkthrough

<!-- # practice-quiz-1-walkthrough-sp2025 -->

## Practice and Quiz 1 - ER Modeling

<div class="columns">

<div class="column" width="50%">

### Quiz basics

- Quizzes are all about vocabulary and background info.

- Quizzes are multiple-choice on Canvas.

- Quizzes REQUIRE the lockdown browser.

- Practice Quizzes and Real Quizzes use the same question bank.

- Take practice quiz as many times as you like!

- Take real quiz ONLY ONCE.

</div>

<div class="column" width="50%">

### ER Modeling

- Quiz 1 focuses on Entity Relation Modeling.
- See this [study
  guide](https://lowkeylabs.github.io/cmsc408-course-admin/guide/er-models/)
- Goal is to get familiar with vocabulary.
- Lectures will use the vocabulary, you can refer to study guide to
  review terms you don’t understand.
- Another way to learn and reinforce!

</div>

</div>

# Homework 1 - DE Tool Review

<!-- # Homework 1 - Spring 2025 -->

## Homework 1 - Data Engineering Tool Review

<div class="columns">

<div class="column" width="50%">

### Overview

- Homework 1 focuses on the tools and workflow.
- [Link to Homework
  1](https://virginiacommonwealth.instructure.com/courses/113813/assignments/1072333)

### General homework workflow

- Download assignment repository
- Edit files using VS code
- Commit and push changes to GITHUB
  - Submit HTML to Canvas
  - Submit repo to Gradescope

</div>

<div class="column" width="50%">

### Notes

- The focus of this assignment is on *installing* and *testing* the
  tools.
- Please allow plenty of time!
- Don’t get frustrated. Use *Discord* to get help.
- Break away from your GUI and try the command line.
- All future assignments will use these same tools.

</div>

</div>

## Homework 1 - Tools

<div class="columns">

<div class="column" width="50%">

### Tools used

Below is a list of tools for HW1 and download URLs.

- [Visual Studio Code](https://code.visualstudio.com/download)
- [GIT](https://git-scm.com/downloads)
- [GH CLI](https://cli.github.com/)
- [Quarto](https://quarto.org/docs/get-started/)

When installed properly, all these tools should run directly from the
command line!

</div>

<div class="column" width="50%">

### My tool versions

![](assets/hw1-sp2025-tool-versions.png)

</div>

</div>

> [!NOTE]
>
> If the tools don’t run from CLI, you need to update your PATH
> environment variable. Ask [ChatGPT](https://chatgpt.com/)!

## Homework 1 - Command line interface

<div class="columns">

<div class="column" width="49%">

### Windows (Powershell)

<https://www.youtube.com/watch?v=FpRGRLI8Fy8><br/>
<https://www.youtube.com/watch?v=FpRGRLI8Fy8>

</div>

<div class="column" width="2%">

 

</div>

<div class="column" width="49%">

### Mac (zsh)

<https://www.youtube.com/watch?v=FfT8OfMpARM><br/>
<https://www.youtube.com/watch?v=FfT8OfMpARM>

</div>

</div>

> [!TIP]
>
> *Invest the time to get comfy with the CLI!* Direct use of the command
> line will save you *tons* of confusion in the long run!

## Homework 1 - Quarto and rendering

Quarto is a *document compiler*, MUCH like compiling a source file to
create an executable file. Quarto is a wrapper around *Jupyter* and
*Pandoc*.

![](assets/quarto-qmd-how-it-works.png)

For this assignment, you’ll be modifying an existing *qmd* file, adding
your content, rendering the qmd to html and uploading the HTML to
Canvas.

> [!TIP]
>
> I definitely recommend the [Quarto getting started
> tutorial](https://quarto.org/docs/get-started/hello/vscode.html)!
> Don’t forget to *render* the samples I provide in the *repository*.

## Homework 1 - Walkthrough

Use this as a checklist to complete the assignment. Try ALL of the
activities.

<div class="columns">

<div class="column" width="28%">

### Install the tools

- [Visual Studio Code](https://code.visualstudio.com/download)
- [GIT](https://git-scm.com/downloads)
- [GH CLI](https://cli.github.com/)
- [Quarto](https://quarto.org/docs/get-started/)

</div>

<div class="column" width="36%">

### Work the CLI

- Run each tool from the CLI
- Verify versions
- Clone repo using GH
- *cd* into repository
- Render sample QMD files.
- Edit README.md
- Edit *report.qmd* and *render*
- Commit and push changes

</div>

<div class="column" width="36%">

### Inside VS code

- Install Quarto extension
- Make a change
- Commit and push changes within VSC
- Render document within VSC

</div>

</div>

> [!TIP]
>
> ***Spend time experimenting!*** This assignment allows you to focus on
> the tools and workflow. You’ll save time later by investing time now.

# Overview of Database Design

<!-- # Overview of Database Design -->

## Overview of Database Design

<div class="columns">

<div class="column" width="30%">

- **Understanding Requirements**
- Conceptual Design
- Logical Design
- Physical Design
- Implementation
- Testing and Validation
- Maintenance and Optimization

</div>

<div class="column" width="40%">

<p>

Gathering and analyzing business requirements to define the purpose and
scope of the database.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Overview of Database Design

<div class="columns">

<div class="column" width="30%">

- Understanding Requirements
- **Conceptual Design**
- Logical Design
- Physical Design
- Implementation
- Testing and Validation
- Maintenance and Optimization

</div>

<div class="column" width="40%">

<p>

Creating high-level data models, such as ER diagrams, to visualize the
structure and relationships of the data.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Overview of Database Design

<div class="columns">

<div class="column" width="30%">

- Understanding Requirements
- Conceptual Design
- **Logical Design**
- Physical Design
- Implementation
- Testing and Validation
- Maintenance and Optimization

</div>

<div class="column" width="40%">

<p>

Translating the conceptual model into a logical structure that defines
tables, fields, and relationships without concern for physical
implementation.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Overview of Database Design

<div class="columns">

<div class="column" width="30%">

- Understanding Requirements
- Conceptual Design
- Logical Design
- **Physical Design**
- Implementation
- Testing and Validation
- Maintenance and Optimization

</div>

<div class="column" width="40%">

<p>

Deciding on the physical storage of the data, including indexing,
partitioning, and optimization strategies for performance.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Overview of Database Design

<div class="columns">

<div class="column" width="30%">

- Understanding Requirements
- Conceptual Design
- Logical Design
- Physical Design
- **Implementation**
- Testing and Validation
- Maintenance and Optimization

</div>

<div class="column" width="40%">

<p>

Actual creation of the database using SQL, setting up tables,
constraints, and relationships as defined in the logical and physical
design stages.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Overview of Database Design

<div class="columns">

<div class="column" width="30%">

- Understanding Requirements
- Conceptual Design
- Logical Design
- Physical Design
- Implementation
- **Testing and Validation**
- Maintenance and Optimization

</div>

<div class="column" width="40%">

<p>

Ensuring the database meets the requirements through testing,
validation, and adjustments as necessary.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Overview of Database Design

<div class="columns">

<div class="column" width="30%">

- Understanding Requirements
- Conceptual Design
- Logical Design
- Physical Design
- Implementation
- Testing and Validation
- **Maintenance and Optimization**

</div>

<div class="column" width="40%">

<p>

Ongoing tuning and maintenance to ensure the database performs
efficiently and scales with business needs.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Understanding Requirements

<div class="columns">

<div class="column" width="30%">

- **Business Requirements**
- User Requirements
- Data Requirements
- Functional Requirements
- Non-functional Requirements
- Scope Definition

</div>

<div class="column" width="40%">

<p>

Identifying what the business needs from the database, including what
data to store and how it will be used.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_1.png)

</div>

</div>

## Understanding Requirements

<div class="columns">

<div class="column" width="30%">

- Business Requirements
- **User Requirements**
- Data Requirements
- Functional Requirements
- Non-functional Requirements
- Scope Definition

</div>

<div class="column" width="40%">

<p>

Understanding who will use the database and their specific needs.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_1.png)

</div>

</div>

## Understanding Requirements

<div class="columns">

<div class="column" width="30%">

- Business Requirements
- User Requirements
- **Data Requirements**
- Functional Requirements
- Non-functional Requirements
- Scope Definition

</div>

<div class="column" width="40%">

<p>

Determining what data is necessary to fulfill the business and user
requirements.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_1.png)

</div>

</div>

## Understanding Requirements

<div class="columns">

<div class="column" width="30%">

- Business Requirements
- User Requirements
- Data Requirements
- **Functional Requirements**
- Non-functional Requirements
- Scope Definition

</div>

<div class="column" width="40%">

<p>

Identifying operations that the database must support, such as queries,
updates, and reporting.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_1.png)

</div>

</div>

## Understanding Requirements

<div class="columns">

<div class="column" width="30%">

- Business Requirements
- User Requirements
- Data Requirements
- Functional Requirements
- **Non-functional Requirements**
- Scope Definition

</div>

<div class="column" width="40%">

<p>

Considering performance, security, and scalability needs.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_1.png)

</div>

</div>

## Understanding Requirements

<div class="columns">

<div class="column" width="30%">

- Business Requirements
- User Requirements
- Data Requirements
- Functional Requirements
- Non-functional Requirements
- **Scope Definition**

</div>

<div class="column" width="40%">

<p>

Clearly defining the boundaries of what the database will and will not
cover.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_1.png)

</div>

</div>

## Conceptual Design

<div class="columns">

<div class="column" width="30%">

- **ER Modeling**
- Identifying Entities
- Defining Relationships
- Attributes Identification
- Conceptual Schema
- Validation

</div>

<div class="column" width="40%">

<p>

Creating Entity-Relationship (ER) diagrams to represent entities,
attributes, and relationships.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_2.png)

</div>

</div>

## Conceptual Design

<div class="columns">

<div class="column" width="30%">

- ER Modeling
- **Identifying Entities**
- Defining Relationships
- Attributes Identification
- Conceptual Schema
- Validation

</div>

<div class="column" width="40%">

<p>

Defining major objects in the business domain (e.g., customer, order,
product).
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_2.png)

</div>

</div>

## Conceptual Design

<div class="columns">

<div class="column" width="30%">

- ER Modeling
- Identifying Entities
- **Defining Relationships**
- Attributes Identification
- Conceptual Schema
- Validation

</div>

<div class="column" width="40%">

<p>

Establishing how entities are related to each other (e.g., a customer
places an order).
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_2.png)

</div>

</div>

## Conceptual Design

<div class="columns">

<div class="column" width="30%">

- ER Modeling
- Identifying Entities
- Defining Relationships
- **Attributes Identification**
- Conceptual Schema
- Validation

</div>

<div class="column" width="40%">

<p>

Listing key attributes for each entity to capture necessary details.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_2.png)

</div>

</div>

## Conceptual Design

<div class="columns">

<div class="column" width="30%">

- ER Modeling
- Identifying Entities
- Defining Relationships
- Attributes Identification
- **Conceptual Schema**
- Validation

</div>

<div class="column" width="40%">

<p>

Developing a schema that visually represents the data model.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_2.png)

</div>

</div>

## Conceptual Design

<div class="columns">

<div class="column" width="30%">

- ER Modeling
- Identifying Entities
- Defining Relationships
- Attributes Identification
- Conceptual Schema
- **Validation**

</div>

<div class="column" width="40%">

<p>

Reviewing the conceptual model with stakeholders to ensure accuracy.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_2.png)

</div>

</div>

## Logical Design

<div class="columns">

<div class="column" width="30%">

- **Relational Model**
- Normalization
- Defining Tables and Columns
- Primary and Foreign Keys
- Constraints
- Logical Schema

</div>

<div class="column" width="40%">

<p>

Converting ER diagrams into relational tables.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_3.png)

</div>

</div>

## Logical Design

<div class="columns">

<div class="column" width="30%">

- Relational Model
- **Normalization**
- Defining Tables and Columns
- Primary and Foreign Keys
- Constraints
- Logical Schema

</div>

<div class="column" width="40%">

<p>

Applying normalization techniques to reduce data redundancy and improve
integrity.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_3.png)

</div>

</div>

## Logical Design

<div class="columns">

<div class="column" width="30%">

- Relational Model
- Normalization
- **Defining Tables and Columns**
- Primary and Foreign Keys
- Constraints
- Logical Schema

</div>

<div class="column" width="40%">

<p>

Specifying tables, columns, and data types based on entities and
attributes.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_3.png)

</div>

</div>

## Logical Design

<div class="columns">

<div class="column" width="30%">

- Relational Model
- Normalization
- Defining Tables and Columns
- **Primary and Foreign Keys**
- Constraints
- Logical Schema

</div>

<div class="column" width="40%">

<p>

Establishing primary keys for unique identification and foreign keys for
relationships.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_3.png)

</div>

</div>

## Logical Design

<div class="columns">

<div class="column" width="30%">

- Relational Model
- Normalization
- Defining Tables and Columns
- Primary and Foreign Keys
- **Constraints**
- Logical Schema

</div>

<div class="column" width="40%">

<p>

Defining rules for data validation (e.g., NOT NULL, UNIQUE).
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_3.png)

</div>

</div>

## Logical Design

<div class="columns">

<div class="column" width="30%">

- Relational Model
- Normalization
- Defining Tables and Columns
- Primary and Foreign Keys
- Constraints
- **Logical Schema**

</div>

<div class="column" width="40%">

<p>

Creating a detailed schema that outlines the logical structure of the
database.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_3.png)

</div>

</div>

## Physical Design

<div class="columns">

<div class="column" width="30%">

- **Storage Management**
- Indexing
- Partitioning
- Data Compression
- Hardware Considerations
- Backup and Recovery

</div>

<div class="column" width="40%">

<p>

Deciding how and where to store data physically on the storage medium.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_4.png)

</div>

</div>

## Physical Design

<div class="columns">

<div class="column" width="30%">

- Storage Management
- **Indexing**
- Partitioning
- Data Compression
- Hardware Considerations
- Backup and Recovery

</div>

<div class="column" width="40%">

<p>

Creating indexes to speed up data retrieval operations.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_4.png)

</div>

</div>

## Physical Design

<div class="columns">

<div class="column" width="30%">

- Storage Management
- Indexing
- **Partitioning**
- Data Compression
- Hardware Considerations
- Backup and Recovery

</div>

<div class="column" width="40%">

<p>

Dividing large tables into smaller, manageable pieces to improve
performance.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_4.png)

</div>

</div>

## Physical Design

<div class="columns">

<div class="column" width="30%">

- Storage Management
- Indexing
- Partitioning
- **Data Compression**
- Hardware Considerations
- Backup and Recovery

</div>

<div class="column" width="40%">

<p>

Using techniques to reduce storage space and improve efficiency.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_4.png)

</div>

</div>

## Physical Design

<div class="columns">

<div class="column" width="30%">

- Storage Management
- Indexing
- Partitioning
- Data Compression
- **Hardware Considerations**
- Backup and Recovery

</div>

<div class="column" width="40%">

<p>

Selecting appropriate hardware resources (e.g., SSDs, memory) for
optimal performance.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_4.png)

</div>

</div>

## Physical Design

<div class="columns">

<div class="column" width="30%">

- Storage Management
- Indexing
- Partitioning
- Data Compression
- Hardware Considerations
- **Backup and Recovery**

</div>

<div class="column" width="40%">

<p>

Planning for data protection and recovery in case of failures.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_4.png)

</div>

</div>

## Implementation

<div class="columns">

<div class="column" width="30%">

- **Schema Creation**
- Data Population
- Database Configuration
- User Accounts and Permissions
- Trigger and Stored Procedures
- Testing Environment

</div>

<div class="column" width="40%">

<p>

Defining tables, columns, and relationships using SQL.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_5.png)

</div>

</div>

## Implementation

<div class="columns">

<div class="column" width="30%">

- Schema Creation
- **Data Population**
- Database Configuration
- User Accounts and Permissions
- Trigger and Stored Procedures
- Testing Environment

</div>

<div class="column" width="40%">

<p>

Loading initial data into the database.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_5.png)

</div>

</div>

## Implementation

<div class="columns">

<div class="column" width="30%">

- Schema Creation
- Data Population
- **Database Configuration**
- User Accounts and Permissions
- Trigger and Stored Procedures
- Testing Environment

</div>

<div class="column" width="40%">

<p>

Setting up configuration parameters (e.g., memory allocation, cache
size).
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_5.png)

</div>

</div>

## Implementation

<div class="columns">

<div class="column" width="30%">

- Schema Creation
- Data Population
- Database Configuration
- **User Accounts and Permissions**
- Trigger and Stored Procedures
- Testing Environment

</div>

<div class="column" width="40%">

<p>

Creating user accounts and assigning appropriate permissions.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_5.png)

</div>

</div>

## Implementation

<div class="columns">

<div class="column" width="30%">

- Schema Creation
- Data Population
- Database Configuration
- User Accounts and Permissions
- **Trigger and Stored Procedures**
- Testing Environment

</div>

<div class="column" width="40%">

<p>

Implementing business logic at the database level.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_5.png)

</div>

</div>

## Implementation

<div class="columns">

<div class="column" width="30%">

- Schema Creation
- Data Population
- Database Configuration
- User Accounts and Permissions
- Trigger and Stored Procedures
- **Testing Environment**

</div>

<div class="column" width="40%">

<p>

Setting up a testing environment to validate the database
implementation.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_5.png)

</div>

</div>

## Testing and Validation

<div class="columns">

<div class="column" width="30%">

- **Unit Testing**
- Integration Testing
- Performance Testing
- Security Testing
- Data Validation
- Feedback and Iteration

</div>

<div class="column" width="40%">

<p>

Checking individual components (e.g., tables, queries) for correctness.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_6.png)

</div>

</div>

## Testing and Validation

<div class="columns">

<div class="column" width="30%">

- Unit Testing
- **Integration Testing**
- Performance Testing
- Security Testing
- Data Validation
- Feedback and Iteration

</div>

<div class="column" width="40%">

<p>

Ensuring different parts of the database work together as expected.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_6.png)

</div>

</div>

## Testing and Validation

<div class="columns">

<div class="column" width="30%">

- Unit Testing
- Integration Testing
- **Performance Testing**
- Security Testing
- Data Validation
- Feedback and Iteration

</div>

<div class="column" width="40%">

<p>

Measuring response time, throughput, and scalability.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_6.png)

</div>

</div>

## Testing and Validation

<div class="columns">

<div class="column" width="30%">

- Unit Testing
- Integration Testing
- Performance Testing
- **Security Testing**
- Data Validation
- Feedback and Iteration

</div>

<div class="column" width="40%">

<p>

Verifying that the database is protected against unauthorized access and
vulnerabilities.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_6.png)

</div>

</div>

## Testing and Validation

<div class="columns">

<div class="column" width="30%">

- Unit Testing
- Integration Testing
- Performance Testing
- Security Testing
- **Data Validation**
- Feedback and Iteration

</div>

<div class="column" width="40%">

<p>

Ensuring data integrity and accuracy by validating inputs and outputs.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_6.png)

</div>

</div>

## Testing and Validation

<div class="columns">

<div class="column" width="30%">

- Unit Testing
- Integration Testing
- Performance Testing
- Security Testing
- Data Validation
- **Feedback and Iteration**

</div>

<div class="column" width="40%">

<p>

Gathering feedback and making necessary adjustments to the design or
implementation.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_6.png)

</div>

</div>

## Maintenance and Optimization

<div class="columns">

<div class="column" width="30%">

- **Performance Tuning**
- Monitoring
- Backup and Recovery
- Security Updates
- Data Archiving
- Scalability

</div>

<div class="column" width="40%">

<p>

Regularly reviewing and optimizing queries, indexing, and storage
strategies.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_7.png)

</div>

</div>

## Maintenance and Optimization

<div class="columns">

<div class="column" width="30%">

- Performance Tuning
- **Monitoring**
- Backup and Recovery
- Security Updates
- Data Archiving
- Scalability

</div>

<div class="column" width="40%">

<p>

Using monitoring tools to track database performance and detect issues.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_7.png)

</div>

</div>

## Maintenance and Optimization

<div class="columns">

<div class="column" width="30%">

- Performance Tuning
- Monitoring
- **Backup and Recovery**
- Security Updates
- Data Archiving
- Scalability

</div>

<div class="column" width="40%">

<p>

Implementing regular backups and testing recovery procedures.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_7.png)

</div>

</div>

## Maintenance and Optimization

<div class="columns">

<div class="column" width="30%">

- Performance Tuning
- Monitoring
- Backup and Recovery
- **Security Updates**
- Data Archiving
- Scalability

</div>

<div class="column" width="40%">

<p>

Applying security patches and updates to protect against
vulnerabilities.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_7.png)

</div>

</div>

## Maintenance and Optimization

<div class="columns">

<div class="column" width="30%">

- Performance Tuning
- Monitoring
- Backup and Recovery
- Security Updates
- **Data Archiving**
- Scalability

</div>

<div class="column" width="40%">

<p>

Implementing strategies to archive old or unused data to free up space
and improve performance.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_7.png)

</div>

</div>

## Maintenance and Optimization

<div class="columns">

<div class="column" width="30%">

- Performance Tuning
- Monitoring
- Backup and Recovery
- Security Updates
- Data Archiving
- **Scalability**

</div>

<div class="column" width="40%">

<p>

Planning and implementing changes to handle growing amounts of data and
users.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process_shaded_7.png)

</div>

</div>

## Summary of the Database Design Process

<div class="columns">

<div class="column" width="30%">

- **Iterative Process**
- Alignment with Business Goals
- Focus on Data Integrity
- Performance Optimization
- Scalability and Flexibility
- Security and Compliance

</div>

<div class="column" width="40%">

<p>

Design, implementation, testing, and maintenance are ongoing and
iterative.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Summary of the Database Design Process

<div class="columns">

<div class="column" width="30%">

- Iterative Process
- **Alignment with Business Goals**
- Focus on Data Integrity
- Performance Optimization
- Scalability and Flexibility
- Security and Compliance

</div>

<div class="column" width="40%">

<p>

The design should align with and support business objectives.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Summary of the Database Design Process

<div class="columns">

<div class="column" width="30%">

- Iterative Process
- Alignment with Business Goals
- **Focus on Data Integrity**
- Performance Optimization
- Scalability and Flexibility
- Security and Compliance

</div>

<div class="column" width="40%">

<p>

Ensuring accuracy, consistency, and reliability of data is paramount.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Summary of the Database Design Process

<div class="columns">

<div class="column" width="30%">

- Iterative Process
- Alignment with Business Goals
- Focus on Data Integrity
- **Performance Optimization**
- Scalability and Flexibility
- Security and Compliance

</div>

<div class="column" width="40%">

<p>

Design choices should consider efficiency and speed of data retrieval.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Summary of the Database Design Process

<div class="columns">

<div class="column" width="30%">

- Iterative Process
- Alignment with Business Goals
- Focus on Data Integrity
- Performance Optimization
- **Scalability and Flexibility**
- Security and Compliance

</div>

<div class="column" width="40%">

<p>

A good design allows for future growth and changes.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

## Summary of the Database Design Process

<div class="columns">

<div class="column" width="30%">

- Iterative Process
- Alignment with Business Goals
- Focus on Data Integrity
- Performance Optimization
- Scalability and Flexibility
- **Security and Compliance**

</div>

<div class="column" width="40%">

<p>

Protecting data from unauthorized access and ensuring compliance with
regulations.
</p>

</div>

<div class="column" width="30%">

![](./assets/circular_design_process.png)

</div>

</div>

<!-- lecture-block-end -->

## Housekeeping

<div class="columns">

<div class="column" width="1%">

</div>

<div class="column" width="55%">

### Discussion items

- [Deliverable 1 -
  Intros](https://virginiacommonwealth.instructure.com/courses/113813/assignments/1072356) -
  Find a partner! (past due!)

- [Deliverable 2 - Team
  Formation](https://virginiacommonwealth.instructure.com/courses/113813/quizzes/218307) -
  Tell me your team (Due Sun)

- [Discussion 1 - ER
  Modeling](https://virginiacommonwealth.instructure.com/courses/113813/assignments/1075913) -
  Talking ER models (due Sun)

- [Homework 1 - DE Tool
  Review](https://virginiacommonwealth.instructure.com/courses/113813/assignments/1072333) -
  Practice with Quarto (due Sun)

- [Practice Quiz 1 - ER
  Models](https://virginiacommonwealth.instructure.com/courses/113813/quizzes/211170) -
  (Due Wed … but …)

- [Quiz 1 - ER
  Models](https://virginiacommonwealth.instructure.com/courses/113813/quizzes/211165) -
  (Due Next Thu)

- [Study
  Guide](https://lowkeylabs.github.io/cmsc408-course-admin/guide/er-models/) -
  Lecture notes and study guide.

</div>

<div class="column" width="30%">

### Lecture topics

- [Practice Quiz 1 Walkthrough](#practice-quiz-1-walkthrough)

- [Homework 1 - DE Tool Review](#homework-1---de-tool-review)

- [Overview of DB design](#overview-of-database-design)

</div>

</div>

<div style="margin-top:25px">

 

</div>

    <style></style>
    <div class='upcoming-calendar'>

| Module | Week | Date | Day | Notes and Lectures | Activities and due dates |
|:--:|:--:|:--:|:--:|----|----|
| ER Models | 2 | 1/21 | Tue | L3:Entity-relation models |  |
| ER Models | 2 | 1/23 | Thu | L4:ER Models | PQ1:Entity-relation models |
| ER Models | 2 | 1/26 | Sun |  | HW1:DE Tool Review; Prj2:Team formation; Dis1:ER modeling |
| ER Models | 3 | 1/28 | Tue | L5:Relational models 1 |  |
| ER Models | 3 | 1/30 | Thu | L6:Relational models 2 | Q1:Entity-relation models |
| ER Models | 3 | 2/2 | Sun |  | Prj3:Ideation |
| Relational Alg. | 4 | 2/4 | Tue | L7:Relational Algebra 1 | PQ2:Relational Algebra; HW2:Entity Relation Models |
| Relational Alg. | 4 | 2/6 | Thu | L8:Relational Algebra 2 |  |

</div>
