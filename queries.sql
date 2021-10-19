SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;


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



