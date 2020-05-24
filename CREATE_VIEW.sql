/*Stworzony widok pokazujący zadania wysłane po 15 marca 2020*/

CREATE VIEW tasks_before_quarantine AS
SELECT * FROM Submission_History
WHERE submission_date < '2020-03-15';

