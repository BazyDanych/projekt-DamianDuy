ALTER TABLE Enrolment
DROP COLUMN received_points;

ALTER TABLE Certificate_user
DROP COLUMN received_points;

DROP VIEW IF EXISTS tasks_before_quarantine;

/*Usuwanie tabel po prezentacji triggera*/
DELETE FROM Submission_History WHERE id_submission = 5;
DELETE FROM Task_Submission WHERE id_submission = 5;

