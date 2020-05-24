CREATE OR REPLACE PROCEDURE usun_nazw(INT, INT)
LANGUAGE plpgsql    
AS $$
BEGIN
  
    UPDATE users 
    SET last_name = NULL
    WHERE id_user = $1;

   
    UPDATE users 
    SET last_name = NULL
    WHERE id = $2;

    COMMIT;
END;
$$;

