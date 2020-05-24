/*1.TABELA COUNTRY*/

INSERT INTO country (country_name) VALUES ('Polska');
INSERT INTO country (country_name) VALUES ('Wielka Brytania');
INSERT INTO country (country_name) VALUES ('Francja');

/*2.TABELA CITY*/

INSERT INTO city (city_name, id_country) VALUES ('Warszawa',1);
INSERT INTO city (city_name, id_country) VALUES ('Gdańsk',1);
INSERT INTO city (city_name, id_country) VALUES ('Londyn',2);
INSERT INTO city (city_name, id_country) VALUES ('Paryż',3);

/*3.TABELA USERS*/

INSERT INTO users(username,first_name, last_name,account_creation_date,id_city) VALUES ('kiki', 'Julian', 'Kowal','2020-03-05', 2);
INSERT INTO users(username,first_name, last_name,account_creation_date,id_city) VALUES ('mike', 'Micheal', 'Gray','2020-07-09', 3);
INSERT INTO users(username,first_name, last_name,account_creation_date,id_city) VALUES ('maro', 'Marek', 'Baroch','2018-12-11', 2);
INSERT INTO users(username,first_name, last_name,account_creation_date,id_city) VALUES ('Jer23', 'Jerry', 'Blue','2019-12-11', 3);

/*4.TABELA COURSE*/

INSERT INTO course(id_creator) VALUES (1);
INSERT INTO course(id_creator) VALUES (1);
INSERT INTO course(id_creator) VALUES (2);
INSERT INTO course(id_creator) VALUES (3);

/*5.TABELA CERTIFICATE*/
INSERT INTO Certificate(id_course) VALUES (1);
INSERT INTO Certificate(id_course) VALUES (2);

/*6.TABELA MODULE*/
INSERT INTO Module(id_course) VALUES (1);
INSERT INTO Module(id_course) VALUES (2);
INSERT INTO Module(id_course) VALUES (3);
INSERT INTO Module(id_course) VALUES (4);

/*7.TABELA LESSON*/
INSERT INTO Lesson(id_module) VALUES (1);
INSERT INTO Lesson(id_module) VALUES (2);
INSERT INTO Lesson(id_module) VALUES (3);
INSERT INTO Lesson(id_module) VALUES (4);

/*8.TABELA TASK_TYPE*/
INSERT INTO Task_type(task_type) VALUES('Uzupełnianie luk w tekście');
INSERT INTO Task_type(task_type) VALUES('Samodzielne wpisanie fragmentu kodu');

/*9.TABELA TASK*/
INSERT INTO Task(id_task_type, id_lesson) VALUES(1,1);
INSERT INTO Task(id_task_type, id_lesson) VALUES(1,2);
INSERT INTO Task(id_task_type, id_lesson) VALUES(1,3);
INSERT INTO Task(id_task_type, id_lesson) VALUES(2,4);

/*10.TABELA TASK_SUBMISSION*/
INSERT INTO Task_Submission(id_user, id_task) VALUES (1,1);
INSERT INTO Task_Submission(id_user, id_task) VALUES (2,1);
INSERT INTO Task_Submission(id_user, id_task) VALUES (3,2);
INSERT INTO Task_Submission(id_user, id_task) VALUES (4,1);

/*11.TABELA SUBMISSION_HISTORY*/
INSERT INTO Submission_History(id_submission, id_user, id_task, submission_date, submission_time) VALUES (1,1,1,'05.06.2021','20:34');
INSERT INTO Submission_History(id_submission, id_user, id_task, submission_date, submission_time) VALUES (2,2,1,'05.06.2021','23:34');
INSERT INTO Submission_History(id_submission, id_user, id_task, submission_date, submission_time) VALUES (3,3,2,'08.06.2021','17:28');
INSERT INTO Submission_History(id_submission, id_user, id_task, submission_date, submission_time) VALUES (4,4,1,'08.06.2022','19:28');

/*12.TABELA USER_COURSE_POINTS*/
INSERT INTO user_course_points (id_user, id_course, course_points_received) VALUES (1,1,15);
INSERT INTO user_course_points (id_user, id_course, course_points_received) VALUES (2,1,10);
INSERT INTO user_course_points (id_user, id_course, course_points_received) VALUES (3,2,5);
INSERT INTO user_course_points (id_user, id_course, course_points_received) VALUES (4,1,20);

/*13.TABELA ENROLMENT*/ 
INSERT INTO ENROLMENT (id_user, id_course) VALUES (1,1);
INSERT INTO ENROLMENT (id_user, id_course) VALUES (2,1);
INSERT INTO ENROLMENT (id_user, id_course) VALUES (3,2);
INSERT INTO ENROLMENT (id_user, id_course) VALUES (4,1);

/*14.TABELA USER_MODULE_POINTS*/
INSERT INTO user_module_points (id_user, id_module, module_points_received) VALUES (1,1,15);
INSERT INTO user_module_points (id_user, id_module, module_points_received) VALUES (2,1,10);
INSERT INTO user_module_points (id_user, id_module, module_points_received) VALUES (3,2,5);
INSERT INTO user_module_points (id_user, id_module, module_points_received) VALUES (4,1,20);

/*15.TABELA USER_LESSON_POINTS*/
INSERT INTO user_lesson_points(id_user, id_lesson, lesson_points_received) VALUES (1,1,15);
INSERT INTO user_lesson_points(id_user, id_lesson, lesson_points_received) VALUES (2,1,10);
INSERT INTO user_lesson_points(id_user, id_lesson, lesson_points_received) VALUES (3,2,5);
INSERT INTO user_lesson_points(id_user, id_lesson, lesson_points_received) VALUES (4,1,20);

/*16.TABELA USER_TASK_POINTS*/
INSERT INTO user_task_points(id_user, id_task, task_points_received) VALUES (1,1,15);
INSERT INTO user_task_points(id_user, id_task, task_points_received) VALUES (2,1,10);
INSERT INTO user_task_points(id_user, id_task, task_points_received) VALUES (3,2,5);
INSERT INTO user_task_points(id_user, id_task, task_points_received) VALUES (4,1,20);

/*17.TABELA CERTIFICATE_USER*/
INSERT INTO certificate_user (id_user, id_certificate, date_of_receiving, received_points) VALUES (4,1,'12.12.2020', 4);
INSERT INTO certificate_user (id_user, id_certificate, date_of_receiving) VALUES (3,2,'12.11.2020');

/*18.TABELA TASK_CHANGES_HISTORY*/
INSERT INTO task_changes_history(id_task, change_description) VALUES (1, 'Zmiana błędnej treści zadania');

/*19.TABLE LESSON_CHANGES_HISTORY*/
INSERT INTO lesson_changes_history(id_lesson, change_description) VALUES (1, 'Nastąpiła zmiana w zadaniu');

/*20.TABLE COURSE_CHANGES_HISTORY*/
INSERT INTO course_changes_history(id_course, change_description) VALUES (1, 'Nastąpiła zmiana w lekcji');

/* INSERT PREZENTUJĄCY UŻYCIE TRIGGERA */
INSERT INTO Task_Submission(id_user, id_task) VALUES (1,4);











