/*Zapytanie zwracające jeden (pierwszy) kurs, którego właścicielem jest user z przykładowym id 1, wraz z jego username, imieniem i nazwiskiem*/

SELECT id_course, username, first_name, last_name FROM users JOIN course ON id_user = id_creator WHERE id_user = 1 ORDER BY id_course LIMIT 1;

/*Zapytanie zwracające username, first_name, last_name, city i country osób, które żyją w mieście zaczynającym się na 'L' oraz są zapisane do jakiegoś kursu.*/
SELECT username, first_name, last_name, country_name, city_name FROM users as U INNER JOIN city as C ON U.id_city = C.id_city INNER JOIN country as Co ON Co.id_country = C.id_country WHERE C.city_name LIKE 'L%' AND U.id_user IN (SELECT id_user FROM Enrolment); 

/*Historia wysyłania zadań przez danego użytkownika*/
SELECT * FROM submission_history WHERE id_user = 1;

/*Wykaz modułów/lekcji/zadań danego kursu*/
SELECT C.id_course, M.id_module, L.id_lesson, T.id_task FROM course AS C INNER JOIN module AS M ON C.id_course = M.id_course INNER JOIN lesson AS L ON M.id_module = L.id_module INNER JOIN task AS T ON L.id_lesson = T.id_lesson; 

/*Wykaz kursów danego użytkownika*/
SELECT id_course, id_user FROM Enrolment WHERE id_user = 1;

/*Wykaz kursów, których użytkownik jest właścicielem*/
SELECT id_user, first_name, last_name, id_course FROM course AS C INNER JOIN users AS U ON id_user = id_creator WHERE id_creator = 1;

