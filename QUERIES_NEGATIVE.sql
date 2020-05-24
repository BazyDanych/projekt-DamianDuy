/*Zapytanie wyświetla w kolejności malejącej (według course_points_received) username wraz z id_course i punktami uzyskanymi. Jest to ranking z jakiego kursu użytkownicy otrzymali jak dużo punktów*/
SELECT username, id_course, course_points_received FROM user_course_points AS P INNER JOIN users AS U ON U.id_user = P.id_user WHERE course_points_received IS NOT NULL ORDER BY course_points_received DESC;

