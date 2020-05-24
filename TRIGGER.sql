CREATE OR REPLACE FUNCTION sub_his() RETURNS TRIGGER AS $example_table$
   BEGIN
      INSERT INTO Submission_History(id_submission, id_user, id_task, submission_date, submission_time) VALUES (new.id_submission, new.id_user, new.id_task, current_date, current_timestamp);
      RETURN NEW;
   END;
$example_table$ LANGUAGE plpgsql;

CREATE TRIGGER his_trigger AFTER INSERT ON Task_Submission
FOR EACH ROW EXECUTE PROCEDURE sub_his();

