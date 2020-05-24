CREATE DATABASE Website;

CREATE TABLE Country(id_country serial PRIMARY KEY, country_name varchar(255) NOT NULL);

CREATE TABLE City(id_city serial PRIMARY KEY, city_name varchar(255) NOT NULL, id_country INTEGER NOT NULL REFERENCES Country(id_country));

CREATE TABLE users(id_user serial PRIMARY KEY, username varchar(255) NOT NULL, first_name varchar(255), last_name varchar(255), account_creation_date date NOT NULL, id_city INTEGER REFERENCES city (id_city) );

CREATE TABLE Course(id_course serial PRIMARY KEY, id_creator INTEGER NOT NULL REFERENCES users(id_user));

CREATE TABLE Certificate(id_certificate serial PRIMARY KEY, id_course INTEGER NOT NULL REFERENCES Course(id_course));

CREATE TABLE Module(id_module serial PRIMARY KEY, id_course INTEGER NOT NULL REFERENCES course(id_course));

CREATE TABLE Lesson(id_lesson serial PRIMARY KEY, id_module INTEGER NOT NULL REFERENCES Module(id_module));

CREATE TABLE Task_type(id_task_type serial PRIMARY KEY, task_type varchar(1000));

CREATE TABLE Task(id_task serial PRIMARY KEY, id_task_type INTEGER NOT NULL REFERENCES Task_type(id_task_type), id_lesson INTEGER NOT NULL REFERENCES Lesson(id_lesson));

CREATE TABLE Task_Submission(id_submission serial PRIMARY KEY, id_user INTEGER NOT NULL REFERENCES users(id_user), id_task INTEGER NOT NULL REFERENCES Task(id_task));

CREATE TABLE Submission_History(id_submission INTEGER NOT NULL REFERENCES Task_Submission (id_submission), id_user INTEGER NOT NULL REFERENCES users (id_user), id_task INTEGER NOT NULL REFERENCES Task(id_task), submission_date date NOT NULL, submission_time time NOT NULL);

CREATE TABLE Task_Changes_History(id_change serial PRIMARY KEY, id_task INTEGER NOT NULL REFERENCES Task(id_task), change_description varchar(50000) NOT NULL);

CREATE TABLE Lesson_Changes_History(id_change serial PRIMARY KEY, id_lesson INTEGER NOT NULL REFERENCES Lesson(id_lesson), change_description varchar(50000) NOT NULL);

CREATE TABLE Course_Changes_History(id_change serial PRIMARY KEY, id_course INTEGER NOT NULL REFERENCES Course(id_course), change_description varchar(50000) NOT NULL);

CREATE TABLE User_Course_Points(id_course_points serial PRIMARY KEY, id_user INTEGER NOT NULL REFERENCES users(id_user), id_course INTEGER NOT NULL REFERENCES course(id_course), course_points_received INTEGER);

CREATE TABLE User_Module_Points(id_module_points serial PRIMARY KEY, id_user INTEGER NOT NULL REFERENCES users(id_user), id_module INTEGER NOT NULL REFERENCES module(id_module), module_points_received INTEGER);

CREATE TABLE User_Lesson_Points(id_lesson_points serial PRIMARY KEY, id_user INTEGER NOT NULL REFERENCES users(id_user), id_lesson INTEGER NOT NULL REFERENCES lesson(id_lesson), lesson_points_received INTEGER);

CREATE TABLE User_Task_Points(id_task_points serial PRIMARY KEY, id_user INTEGER NOT NULL REFERENCES users(id_user), id_task INTEGER NOT NULL REFERENCES Task(id_task), task_points_received INTEGER);

CREATE TABLE Enrolment(id_user INTEGER NOT NULL REFERENCES users(id_user), id_course INTEGER NOT NULL REFERENCES course(id_course), received_points INTEGER REFERENCES User_Course_Points(id_course_points));

CREATE TABLE Certificate_User(id_user INTEGER NOT NULL REFERENCES users(id_user), id_certificate INTEGER NOT NULL REFERENCES Certificate(id_certificate), date_of_receiving date NOT NULL, received_points INTEGER REFERENCES User_Course_Points(id_course_points));



