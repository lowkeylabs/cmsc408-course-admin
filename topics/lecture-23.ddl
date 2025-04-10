--  lecture-23 DDL - same as homework 6 - resume database

-- # DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
-- # The autograder will look for specific code sections. If it can't find them, you'll get a "0"

--  Code specifications.
--  0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
--  1. Complete all sections below.
--  2. Table names must MATCH EXACTLY to schemas provided.
--  3. Define primary keys in each table as appropriate.
--  4. Define foreign keys connecting tables as appropriate.
--  5. Assign ID to skills, people, roles manually (you must pick the ID number!)
--  6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
--  7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

--  Section 1
--  Drops all tables.  This section should be amended as new tables are added.

drop table if exists peopleskills;
drop table if exists peopleroles;
drop table if exists skills;
drop table if exists people;
drop table if exists roles;
--  ... 

--  Section 2
--  Create skills( id,name, description, tag, url, time_commitment)
--  ID, name, description and tag cannot be NULL. Other fields can default to NULL.
--  tag is a skill category grouping.  You can assign it based on your skill descriptions.
--  time committment offers some sense of how much time was required (or will be required) to gain the skill.
--  You can assign the skill descriptions.  Please be creative!

drop table if exists skills;
CREATE TABLE skills (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL UNIQUE,
    description varchar(4096) NOT NULL,
    tag varchar(255) NOT NULL,
    url VARCHAR(255),
    time_commitment varchar(255)
);


--  Section 3
--  Populate skills
--  Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
--  You can assign skill names.  Please be creative!


INSERT INTO skills (id, name, description, tag, url, time_commitment) VALUES
(101, 'Time Management', 'Learn effective time management techniques to maximize productivity and reduce stress.', 'Skill 1', 'https://www.linkedin.com/learning/time-management', '5 hours'),
(102, 'Digital Marketing Foundations', 'Understand the basics of digital marketing, including SEO, social media, and email marketing.', 'Skill 2', 'https://www.linkedin.com/learning/digital-marketing-foundations', '8 hours'),
(103, 'Python for Data Science', 'An introduction to using Python in data science, covering libraries like Pandas and NumPy.', 'Skill 3', 'https://www.linkedin.com/learning/python-for-data-science', '15 hours'),
(104, 'Effective Communication', 'Learn techniques for clear, concise, and impactful communication in the workplace.', 'Skill 4', 'https://www.linkedin.com/learning/effective-communication', '4 hours'),
(105, 'Agile Project Management', 'Gain foundational knowledge of Agile project management, including Scrum methodologies.', 'Skill 5', 'https://www.linkedin.com/learning/agile-project-management', '10 hours'),
(106, 'Graphic Design Basics', 'Explore the fundamentals of graphic design, including color theory, typography, and layout.', 'Skill 6', 'https://www.linkedin.com/learning/graphic-design-basics', '6 hours'),
(107, 'Excel Data Visualization', 'Learn to create insightful and interactive data visualizations using Microsoft Excel.', 'Skill 7', 'https://www.linkedin.com/learning/excel-data-visualization', '5 hours'),
(108, 'Introduction to SQL', 'Master the basics of SQL for managing and querying relational databases.', 'Skill 8', 'https://www.linkedin.com/learning/introduction-to-sql', '7 hours');


--  Section 4
--  Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
--  ID cannot be null, Last name cannot be null, date joined cannot be NULL.
--  All other fields can default to NULL.

drop table if exists people;
CREATE TABLE people (
    id INT,
    first_name varchar(255),
    last_name varchar(255) NOT NULL,
    email varchar(255),
    linkedin_url VARCHAR(255),
    headshot_url VARCHAR(255),
    discord_handle varchar(255),
    brief_bio varchar(4096),
    date_joined DATE NOT NULL,
    primary key (id)
);


--  Section 5
--  Populate people with TEN people.
--  Their last names must exactly be “Person 1”, “Person 2”, etc.
--  Other fields are for you to assign.

INSERT INTO people (id, first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) VALUES
(201, 'Luca', 'Person 1', 'luca.person1@example.com', 'https://www.linkedin.com/in/luca-person1', 'http://example.com/headshots/luca.jpg', 'luca123', 'An experienced software developer from Italy.', '2023-01-15'),
(202, 'Akira', 'Person 2', NULL, 'https://www.linkedin.com/in/akira-person2', 'http://example.com/headshots/akira.jpg', 'akira#4567', 'A data scientist specializing in AI from Japan.', '2023-02-10'),
(203, 'Sofia', 'Person 3', 'sofia.person3@example.com', 'https://www.linkedin.com/in/sofia-person3', 'http://example.com/headshots/sofia.jpg', 'sofi_p3', 'A project manager with expertise in agile methodologies, based in Spain.', '2023-03-05'),
(204, 'Juan', 'Person 4', 'juan.person4@example.com', 'https://www.linkedin.com/in/juan-person4', 'http://example.com/headshots/juan.jpg', 'juanito#9876', 'A skilled graphic designer from Mexico.', '2023-04-20'),
(205, 'Yuki', 'Person 5', 'yuki.person5@example.com', 'https://www.linkedin.com/in/yuki-person5', 'http://example.com/headshots/yuki.jpg', 'yuki#1234', 'An engineer with a focus on renewable energy solutions from Japan.', '2023-05-15'),
(206, 'Alessia', 'Person 6', 'alessia.person6@example.com', 'https://www.linkedin.com/in/alessia-person6', 'http://example.com/headshots/alessia.jpg', 'alessia_2023', 'A marketing strategist from Italy.', '2023-06-25'),
(207, 'Carlos', 'Person 7', NULL, 'https://www.linkedin.com/in/carlos-person7', 'http://example.com/headshots/carlos.jpg', 'carlosmex#321', 'An IT specialist from Mexico with a passion for cybersecurity.', '2023-07-08'),
(208, 'Aiko', 'Person 8', 'aiko.person8@example.com', 'https://www.linkedin.com/in/aiko-person8', 'http://example.com/headshots/aiko.jpg', 'aiko_chan', 'A digital artist from Japan.', '2023-08-12'),
(209, 'Elena', 'Person 9', 'elena.person9@example.com', 'https://www.linkedin.com/in/elena-person9', 'http://example.com/headshots/elena.jpg', 'elena9', 'An HR consultant from Spain with a background in organizational psychology.', '2023-09-18'),
(210, 'Miguel', 'Person 10', NULL, 'https://www.linkedin.com/in/miguel-person10', 'http://example.com/headshots/miguel.jpg', 'miguelito#456', 'A supply chain analyst from Mexico.', '2023-10-03');


--  Section 6
--  Create peopleskills( id, skills_id, people_id, date_acquired )
--  None of the fields can ba NULL. ID can be auto_increment.

drop table if exists peopleskills;
CREATE TABLE peopleskills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    skills_id INT NOT NULL,
    people_id INT NOT NULL,
    date_acquired DATE NOT NULL,
    FOREIGN KEY (skills_id) REFERENCES skills(id) 
        ON DELETE CASCADE 
        ON UPDATE CASCADE   
    ,FOREIGN KEY (people_id) REFERENCES people(id) 
        ON DELETE CASCADE
        ON UPDATE CASCADE
);


--  Section 7
--  Populate peopleskills such that:
--  Person 1 has skills 1,3,6;
--  Person 2 has skills 3,4,5;
--  Person 3 has skills 1,5;
--  Person 4 has no skills;
--  Person 5 has skills 3,6;
--  Person 6 has skills 2,3,4;
--  Person 7 has skills 3,5,6;
--  Person 8 has skills 1,3,5,6;
--  Person 9 has skills 2,5,6;
--  Person 10 has skills 1,4,5;
--  Note that no one has yet acquired skills 7 and 8.
 
INSERT INTO peopleskills (people_id, skills_id, date_acquired) VALUES
-- Person 1 has skills 1, 3, 6 (skills 101, 103, 106)
(201, 101, '2023-01-10'),
(201, 103, '2023-02-15'),
(201, 106, '2023-03-20'),

-- Person 2 has skills 3, 4, 5 (skills 103, 104, 105)
(202, 103, '2023-01-25'),
(202, 104, '2023-02-18'),
(202, 105, '2023-03-05'),

-- Person 3 has skills 1, 5 (skills 101, 105)
(203, 101, '2023-01-30'),
(203, 105, '2023-02-12'),

-- Person 4 has no skills

-- Person 5 has skills 3, 6 (skills 103, 106)
(205, 103, '2023-01-15'),
(205, 106, '2023-03-22'),

-- Person 6 has skills 2, 3, 4 (skills 102, 103, 104)
(206, 102, '2023-01-20'),
(206, 103, '2023-02-28'),
(206, 104, '2023-03-17'),

-- Person 7 has skills 3, 5, 6 (skills 103, 105, 106)
(207, 103, '2023-01-22'),
(207, 105, '2023-02-10'),
(207, 106, '2023-03-01'),

-- Person 8 has skills 1, 3, 5, 6 (skills 101, 103, 105, 106)
(208, 101, '2023-02-05'),
(208, 103, '2023-03-15'),
(208, 105, '2023-04-10'),
(208, 106, '2023-05-01'),

-- Person 9 has skills 2, 5, 6 (skills 102, 105, 106)
(209, 102, '2023-02-14'),
(209, 105, '2023-03-20'),
(209, 106, '2023-04-25'),

-- Person 10 has skills 1, 4, 5 (skills 101, 104, 105)
(210, 101, '2023-01-18'),
(210, 104, '2023-02-22'),
(210, 105, '2023-03-30');

--  Section 8
--  Create roles( id, name, sort_priority )
--  sort_priority is an integer and is used to provide an order for sorting roles

drop table if exists roles;
CREATE TABLE roles (
    id INT PRIMARY KEY,
    name varchar(255) NOT NULL,
    sort_priority INT DEFAULT 0
);


--  Section 9
--  Populate roles
--  Designer, Developer, Recruit, Team Lead, Boss, Mentor
--  Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

INSERT INTO roles (id, name, sort_priority) VALUES
(301, 'Designer', 10),
(302, 'Developer', 20),
(303, 'Recruit', 30),
(304, 'Team Lead', 40),
(305, 'Boss', 50),
(306, 'Mentor', 60);


--  Section 10
--  Create peopleroles( id, people_id, role_id, date_assigned )
--  None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    people_id INT NOT NULL,
    roles_id INT NOT NULL,
    date_assigned DATE NOT NULL,
   FOREIGN KEY (people_id) REFERENCES people(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE,
    FOREIGN KEY (roles_id) REFERENCES roles(id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

--  Section 11
--  Populate peopleroles
--  Person 1 is Developer 
--  Person 2 is Boss, Mentor
--  Person 3 is Developer and Team Lead
--  Person 4 is Recruit
--  person 5 is Recruit
--  Person 6 is Developer and Designer
--  Person 7 is Designer
--  Person 8 is Designer and Team Lead
--  Person 9 is Developer
--  Person 10 is Developer and Designer

INSERT INTO peopleroles (people_id, roles_id, date_assigned) VALUES
-- Person 1 is Developer
(201, 302, '2023-01-10'),

-- Person 2 is Boss and Mentor
(202, 305, '2023-02-05'),
(202, 306, '2023-03-01'),

-- Person 3 is Developer and Team Lead
(203, 302, '2023-01-20'),
(203, 304, '2023-02-15'),

-- Person 4 is Recruit
(204, 303, '2023-01-25'),

-- Person 5 is Recruit
(205, 303, '2023-01-30'),

-- Person 6 is Developer and Designer
(206, 302, '2023-01-18'),
(206, 301, '2023-02-10'),

-- Person 7 is Designer
(207, 301, '2023-01-22'),

-- Person 8 is Designer and Team Lead
(208, 301, '2023-01-12'),
(208, 304, '2023-03-05'),

-- Person 9 is Developer
(209, 302, '2023-02-14'),

-- Person 10 is Developer and Designer
(210, 302, '2023-02-01'),
(210, 301, '2023-03-20');

DROP TABLE IF EXISTS avg_example;
CREATE TABLE AVG_EXAMPLE(
    value int
);
INSERT INTO AVG_EXAMPLE (value) VALUES 
(1),
(2),
(3),
(NULL),
(0);

DROP TABLE IF EXISTS restaurant_menu;
CREATE TABLE restaurant_menu (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(50),
    category VARCHAR(20),
    calories INT,
    price DECIMAL(5, 2),
    popularity_score DECIMAL(2, 1)
);

INSERT INTO restaurant_menu (item_id, item_name, category, calories, price, popularity_score) VALUES
    (1, 'Mozzarella Sticks', 'Appetizer', 250, 5.99, 4.0),
    (2, 'Garlic Bread', 'Appetizer', NULL, 6.50, 3.5),
    (3, 'Stuffed Mushrooms', 'Appetizer', 300, NULL, NULL),
    (4, 'Grilled Salmon', 'Entree', 700, 12.99, 4.5),
    (5, 'Spaghetti Carbonara', 'Entree', 850, 14.99, NULL),
    (6, 'Vegetable Stir-Fry', 'Entree', NULL, 13.50, 4.4),
    (7, 'Chocolate Lava Cake', 'Dessert', 400, 4.99, 4.8),
    (8, 'Cheesecake', 'Dessert', 450, 5.50, NULL),
    (9, 'Tiramisu', 'Dessert', 500, 6.00, 4.2),
    (10, 'Panna Cotta', 'Dessert', NULL, 5.75, 4.6);

commit;
