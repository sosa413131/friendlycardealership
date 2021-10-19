-- sales by employee ID
SELECT COUNT(*), sale.empId  FROM CarSale sale GROUP BY empId;

-- new cars with list prices betweem 30k and 20k inclusive
SELECT VIN, listPrice FROM CarNewCar WHERE (listPrice <= 30000) AND (listPrice <= 20000);

-- average saleperson rating by employee id
SELECT AVG(survey.salespersonRating), sale.empId FROM  CarSurvey survey
INNER JOIN CarSale sale
ON survey.invoiceNo = sale.invoiceNo
GROUP BY sale.empId;

-- All customer names who saw the billboard ad
SELECT firstName, lastName FROM CarCustomer 
WHERE adSeen='Billboard';

-- all employees who were hired between 01/01/1990 and 12/31/1999
SELECT firstName, lastName FROM CarSalesperson
WHERE dateHired >= TO_DATE('1990-01-01', 'YYYY-MM-DD')
  AND dateHired <= TO_DATE('1999-12-31', 'YYYY-MM-DD');

-- Trigger to confirm email format

CREATE TRIGGER confirm_INSERT_CarSale
AFTER INSERT ON CarSale
BEGIN
    dbms_output.enable; 
    DBMS_OUTPUT.PUT_LINE('Congratulations on the sale!');
END;
/


-- CREATE TRIGGER validate_email_before_INSERT_CarCustomer 
-- BEFORE INSERT ON CarCustomer
-- FOR EACH ROW
-- BEGIN
--  CASE: NEW.custEmail
--  IF :NEW.custEmail NOT LIKE '*@*\.*' THEN
--  RAISERROR (ABORT,'Invalid email address')
--  END IF;
--  END CASE;
--  END;
--  /

--  CREATE TRIGGER formatting_values
-- BEFORE INSERT ON salesperson
-- FOR EACH ROW
-- SET
-- NEW.firstName = CONCAT(UPPER(LEFT(new.firstName, 1)), SUBSTRING (new.firstName,2)),
-- NEW.lastName = CONCAT(UPPER(LEFT(new.lasttName, 1)), SUBSTRING (new.lastName,2)),
-- NEW.salespersonId = CONCAT(UPPER(LEFT(new.salespersonId, 1)), SUBSTRING (new.salespersonId,2)),
-- NEW.city = CONCAT(UPPER(LEFT(new.city, 1)), SUBSTRING (new.city,2)),
-- NEW.state = CONCAT(NEW.state);
-- INSERT INTO salesperson values (`y005`,`catrina`,`lopez`,`127, Sherman Ave`,`New York`,`NY`,null,null,null,null,null,null,null,null);
-- DROP TRIGGER formatting_values;

