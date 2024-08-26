# Entity-relation models 1

Monday - Aug 26, 2024

## Housekeeping

<div class="columns">

<div class="column" width="9%">

</div>

<div class="column" width="45%">

### Discussion items

- 

</div>

<div class="column" width="40%">

### Lecture topics

- Homework 1

- Intro to DB design

- Intro to ER Models

</div>

</div>

<div style="margin-top:25px">

 

</div>

    <style></style>
    <div class='upcoming-calendar'>

| Module | Week | Date | Day | Lectures | Deliverables/Notes |
|:--:|:--:|:--:|:--:|----|----|
| ER Models | 2 | 8/26 | Mon | MTG2: L2 (Entity-relation models 1) | Last day to add/drop |
| ER Models | 2 | 8/28 | Wed | MTG3: L3 (Entity-relation models 2) |  |
| ER Models | 2 | 8/30 | Fri |  | PrjDel 3 due (Team reflection) |
| ER Models | 2 | 9/1 | Sun |  | HW1 due (DE Tool Review) |
| ER Models | 3 | 9/2 | Mon |  | NO CLASS - University closed (Labor day) |
| ER Models | 3 | 9/4 | Wed | MTG4: L4 (ER Models) | Quiz 2 due (Entity-relation models) |
| ER Models | 3 | 9/6 | Fri |  | PrjDel 4 due (Team reflection) |
| Relational Alg. | 4 | 9/9 | Mon | MTG5: L5 (DDL / DML / SQLLite / MySQL) |  |

</div>
<!-- {{< include "./_template-lecture-gantt.qmd" >}} -->
<!-- {{< include ../../topics/_homework-2-discussion.qmd >}} -->
<!-- {{< include ../../topics/_database-design-process.qmd >}} -->
<!-- {{< include ../../topics/_entities-attributes-and-relationships-and-the-er-diagram.qmd >}} -->

# Introduction to ER Models

## Importance of ER Models in Database Design

Entity-Relationship (ER) models are essential tools for designing
databases as they provide a clear structure of data and its
relationships. ER models help in organizing data and ensuring that
databases are efficient, accurate, and scalable.

<div class="columns">

<div class="column" width="95%">

- ER models offer a visual representation of the database structure.
- They help in identifying and organizing data requirements.
- ER models reduce the complexity of database design.
- They support the identification of entities, attributes, and
  relationships.
- ER models guide the transition from conceptual design to logical
  design.

</div>

<div class="column" width="5%">

</div>

</div>

*Understanding ER models is crucial for effective database design and
implementation.*

## Components of ER Models: Entities, Relationships, and Attributes

ER models consist of three key components: entities, relationships, and
attributes. These components work together to define the structure and
behavior of the database.

<div class="columns">

<div class="column" width="95%">

- Entities are objects or concepts that have a distinct existence in the
  database.
- Relationships define how entities are connected to each other.
- Attributes are characteristics that describe entities or
  relationships.
- Entities are usually represented by rectangles in ER diagrams.
- Relationships are depicted as diamonds, while attributes are ovals.

</div>

<div class="column" width="5%">

</div>

</div>

*Entities, relationships, and attributes are the building blocks of an
ER model.*

## Conceptual, Logical, and Physical Data Models

Data models can be categorized into three types: conceptual, logical,
and physical. Each type serves a different purpose in the database
design process, from high-level planning to implementation.

<div class="columns">

<div class="column" width="95%">

- **Conceptual Model:** High-level, abstract model focusing on the
  entities and relationships.
- **Logical Model:** Translates the conceptual model into a more
  detailed structure, specifying entities, attributes, and relationships
  without considering physical storage.
- **Physical Model:** Focuses on the actual implementation, including
  tables, columns, and data types.
- Conceptual models are often created during the initial database design
  phase.
- Logical models help in the creation of relational schemas.

</div>

<div class="column" width="5%">

</div>

</div>

*Different types of data models address various stages of database
design, from conceptualization to implementation.*

## Entities in ER Models

Entities represent real-world objects or concepts that are stored in the
database. Identifying entities correctly is vital for the success of the
database design.

<div class="columns">

<div class="column" width="95%">

- Entities are things that can be distinctly identified.
- Examples of entities include people, products, events, and locations.
- Entities have attributes that provide details about them.
- Each entity type is represented by a set of instances in the database.
- Entity types are often mapped to tables in the relational model.

</div>

<div class="column" width="5%">

</div>

</div>

*Entities form the core of the database, representing key objects or
concepts in the system.*

## Relationships in ER Models

Relationships define how entities interact with each other within the
database. Understanding these connections is critical to accurately
modeling real-world interactions.

<div class="columns">

<div class="column" width="95%">

- Relationships represent associations between two or more entities.
- They can be categorized as one-to-one, one-to-many, or many-to-many.
- Relationships have attributes that describe the nature of the
  association.
- In ER diagrams, relationships are depicted as diamonds connecting
  entities.
- Properly defining relationships helps in maintaining data integrity.

</div>

<div class="column" width="5%">

</div>

</div>

*Relationships ensure that the database reflects the interactions
between different entities in the system.*

## Attributes in ER Models

Attributes describe the properties or characteristics of entities and
relationships. They are fundamental to defining the structure and
constraints of the database.

<div class="columns">

<div class="column" width="95%">

- Attributes provide specific details about entities, such as name, ID,
  or age.
- They can be simple (indivisible), composite (consisting of multiple
  components), or derived (calculated from other attributes).
- Each attribute belongs to a specific domain, which defines the set of
  possible values.
- Attributes are represented as ovals connected to their respective
  entities or relationships in ER diagrams.
- Proper attribute selection is crucial for accurate data
  representation.

</div>

<div class="column" width="5%">

</div>

</div>

*Attributes are key to defining the details and constraints of entities
and relationships in the database.*

## Cardinality in Relationships

Cardinality defines the number of instances of one entity that can be
associated with instances of another entity. Accurately determining
cardinality is essential for representing real-world relationships in
the database.

<div class="columns">

<div class="column" width="95%">

- Cardinality types include one-to-one, one-to-many, and many-to-many.
- One-to-one: Each instance of one entity relates to a single instance
  of another entity.
- One-to-many: One entity instance relates to multiple instances of
  another entity.
- Many-to-many: Multiple instances of one entity relate to multiple
  instances of another entity.
- Cardinality constraints are depicted in ER diagrams by numerical
  notation or Crow’s Foot symbols.

</div>

<div class="column" width="5%">

</div>

</div>

*Cardinality is critical to ensuring that database relationships
accurately reflect real-world scenarios.*

## Participation in Relationships

Participation indicates whether all or only some instances of an entity
are involved in a relationship. Understanding participation is crucial
for accurately modeling the mandatory or optional nature of
relationships in a database.

<div class="columns">

<div class="column" width="95%">

- Participation types include total participation and partial
  participation.
- Total Participation (Mandatory): Every instance of an entity must be
  involved in a relationship with instances of another entity.
- Partial Participation (Optional): Some instances of an entity may not
  be involved in a relationship with instances of another entity.
- Participation constraints are often represented in ER diagrams by
  solid lines (for total participation) or dashed lines (for partial
  participation).

</div>

<div class="column" width="5%">

</div>

</div>

*Participation helps define the essential and optional relationships,
ensuring the integrity and accuracy of the database model.*

## ER Diagram Notations

ER diagrams use specific notations to represent entities, relationships,
and attributes. Understanding these notations is essential for creating
and interpreting ER models effectively.

<div class="columns">

<div class="column" width="95%">

- **Chen’s Notation:** Uses rectangles for entities, diamonds for
  relationships, and ovals for attributes.
- **Crow’s Foot Notation:** Represents relationships with lines and
  ‘crow’s feet’ to indicate cardinality.
- Entities are often depicted with their primary keys underlined.
- Relationships may include roles and participation constraints.
- Notations help in communicating the structure and details of the ER
  model.

</div>

<div class="column" width="5%">

</div>

</div>

*Mastering ER diagram notations is key to effectively designing and
interpreting database models.*

## Specialization and Generalization in ER Models

Specialization and generalization are advanced ER modeling techniques
used to represent inheritance and hierarchy among entities. These
techniques enhance the expressiveness of ER models.

<div class="columns">

<div class="column" width="95%">

- **Specialization:** Process of defining a set of subclasses from a
  superclass based on distinguishing attributes.
- **Generalization:** The reverse process, where multiple subclasses are
  combined into a single superclass.
- Both techniques help in modeling inheritance and shared
  characteristics.
- These concepts are depicted in ER diagrams using triangle symbols.
- Proper use of specialization and generalization can simplify complex
  ER models.

</div>

<div class="column" width="5%">

</div>

</div>

*Specialization and generalization are powerful tools for managing
complexity in ER models.*

## Translating ER Models to Relational Schema

The final step in ER modeling is translating the ER model into a
relational schema. This process involves mapping entities,
relationships, and attributes into tables, columns, and keys.

<div class="columns">

<div class="column" width="95%">

- Entities are typically mapped to tables, with attributes becoming
  columns.
- Relationships may result in foreign keys or separate join tables.
- Primary keys ensure each table has a unique identifier for its rows.
- Mapping complex relationships may require additional tables or
  constraints.
- The translation process ensures that the conceptual design is
  accurately implemented in the database.

</div>

<div class="column" width="5%">

</div>

</div>

*Translating ER models to relational schemas is essential for
implementing the database design in a relational database system.*

## Housekeeping

<div class="columns">

<div class="column" width="9%">

</div>

<div class="column" width="45%">

### Discussion items

- 

</div>

<div class="column" width="40%">

### Lecture topics

- Homework 1

- Intro to DB design

- Intro to ER Models

</div>

</div>

<div style="margin-top:25px">

 

</div>

    <style></style>
    <div class='upcoming-calendar'>

| Module | Week | Date | Day | Lectures | Deliverables/Notes |
|:--:|:--:|:--:|:--:|----|----|
| ER Models | 2 | 8/26 | Mon | MTG2: L2 (Entity-relation models 1) | Last day to add/drop |
| ER Models | 2 | 8/28 | Wed | MTG3: L3 (Entity-relation models 2) |  |
| ER Models | 2 | 8/30 | Fri |  | PrjDel 3 due (Team reflection) |
| ER Models | 2 | 9/1 | Sun |  | HW1 due (DE Tool Review) |
| ER Models | 3 | 9/2 | Mon |  | NO CLASS - University closed (Labor day) |
| ER Models | 3 | 9/4 | Wed | MTG4: L4 (ER Models) | Quiz 2 due (Entity-relation models) |
| ER Models | 3 | 9/6 | Fri |  | PrjDel 4 due (Team reflection) |
| Relational Alg. | 4 | 9/9 | Mon | MTG5: L5 (DDL / DML / SQLLite / MySQL) |  |

</div>
