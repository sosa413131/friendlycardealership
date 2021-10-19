-- Indices for foreign keys et. al.

CREATE INDEX CarNewCar_Options_VIN_index ON CarNewCar_Options (VIN); 
CREATE INDEX CarNewCar_Options_carOption_index ON CarNewCar_Options (carOption);
CREATE INDEX CarUsedCarFeatures_VIN_index ON CarUsedCarFeatures(VIN)
CREATE INDEX CarSale_custId_index ON CarSale (custId);
CREATE INDEX CarSale_empId_index ON CarSale (empId);
CREATE INDEX CarSale_newCarVIN_index ON  CarSale (newCarVIN);
CREATE INDEX CarSale_usedCarVIN_index ON CarSale (usedCarVIN);
CREATE INDEX CarSale_insPolNo_insCoName_index ON CarSale (insPolNo,insCoName);
CREATE INDEX CarSale_finPolNo_finCoName_index ON CarSale (finPolNo, finCoName);
CREATE INDEX CarSale_registrationNo_index ON CarSale (registrationNo);
CREATE INDEX CarSale_warType_index ON CarSale(warType);
CREATE INDEX CarSale_CustomItem_invoiceNo_index ON CarSale_CustomItem (invoiceNo) ;
CREATE INDEX CarSale_CustomItem ON CarSale_CustomItem (customItem);
CREATE INDEX CarSurvey_invoiceNo_index ON CarSurvey (invoiceNo);
CREATE INDEX CarCustomer_driveLicenseNo_index ON CarCustomer (driveLicenseNo);

--  CarAd 

INSERT INTO  CarAd (placedIn, initialDate, totalCost, frequency, contactPerson,  areaCode, phoneNumber ) 
VALUES ('Billboard', TO_DATE('2021-01-20','YYYY-MM-DD'), 10000.00,5,'Charles Dickens',917,5551234 );

INSERT INTO  CarAd (placedIn, initialDate, totalCost, frequency, contactPerson,  areaCode, phoneNumber ) 
VALUES ('Print Media', TO_DATE('2021-02-14','YYYY-MM-DD'), 2000.99,7,'Robert Greene',917,5555678 );

INSERT INTO  CarAd (placedIn, initialDate, totalCost, frequency, contactPerson,  areaCode, phoneNumber ) 
VALUES ('TV Commercial', TO_DATE('2021-03-11','YYYY-MM-DD'), 20000.50,9,'Jordan Peterson',917,5559101 );

INSERT INTO  CarAd (placedIn, initialDate, totalCost, frequency, contactPerson,  areaCode, phoneNumber ) 
VALUES ('Radio', TO_DATE('2021-07-04','YYYY-MM-DD'), 10000.49,1,'Eckart Tolle',917,5551213 );

INSERT INTO  CarAd (placedIn, initialDate, totalCost, frequency, contactPerson,  areaCode, phoneNumber ) 
VALUES ('Billboard', TO_DATE('2021-09-11','YYYY-MM-DD'), 10000.98,6,'Edgar Allan Poe',917,5551415 );

-- CarCustomer 

INSERT INTO CarCustomer (custId, firstName, lastName, street,city, state, zip, phoneArea,  phoneNumber, driveLicenseNo, adSeen  )
 VALUES ('c001', 'Dakota', 'Prescott', '1 ATT Way', 'Arlington','TX', '76011', 817, 8924161, 'd001', 'Billboard');

 INSERT INTO CarCustomer (custId, firstName, lastName, street,city, state, zip, phoneArea,  phoneNumber, driveLicenseNo, adSeen  )
 VALUES ('c002', 'Tom', 'Brady', '4201 N Dale Mabry Hwy', 'Tampa','FL', '33607', 813, 3506500, 'd002', 'Print Media');

 INSERT INTO CarCustomer (custId, firstName, lastName, street,city, state, zip, phoneArea,  phoneNumber, driveLicenseNo, adSeen  )
 VALUES ('c003', 'Josh', 'Allan', '1 Bills drive', 'Orchard Park','NY', '14127', 817, 8924161, 'd003', 'Radio');

 INSERT INTO CarCustomer (custId, firstName, lastName, street,city, state, zip, phoneArea,  phoneNumber, driveLicenseNo, adSeen  )
 VALUES ('c004', 'Lamar', 'Jackson', '1101 Russell Street', 'Baltimore','MD', '21230', 817, 8924161, 'd004', 'TV Commercial');

 INSERT INTO CarCustomer (custId, firstName, lastName, street,city, state, zip, phoneArea,  phoneNumber, driveLicenseNo, adSeen  )
 VALUES ('c005', 'Patrick', 'Mahomes', '1 Arrowhead Drive', 'Kansas City','MO', '64129', 817, 8924161, 'd005', 'Billboard');

--  CarNewCar 

 INSERT INTO CarNewCar (VIN, make,model, listPrice, dateOfManufacture, placeOfManufacture, cylinders, doors, weight, capacity, color, delDate, delMiles )
 VALUES ('JH4DB7550SS005262', 'Mini', 'Cooper', 24990.00, TO_DATE('2019-01-01','YYYY-MM-DD'), 'London, England', 6, 2, 3144, 4, 'Green', TO_DATE('20-01-01','YYYY-MM-DD'), 18727 );

 INSERT INTO CarNewCar (VIN, make,model, listPrice, dateOfManufacture, placeOfManufacture, cylinders, doors, weight, capacity, color, delDate, delMiles )
 VALUES ('JH4KA3140KC015221', 'Lincoln', 'MKZ', 18990.00, TO_DATE('2014-01-01','YYYY-MM-DD'), 'Ontario, Canada', 6, 4, 3739, 5, 'Red', TO_DATE('2014-01-01','YYYY-MM-DD'), 60799 );

 INSERT INTO CarNewCar (VIN, make,model, listPrice, dateOfManufacture, placeOfManufacture, cylinders, doors, weight, capacity, color, delDate, delMiles )
 VALUES ('1G3NF52E3XC403652', 'Acura', 'TLX', 22590.00, TO_DATE('2015-01-01','YYYY-MM-DD'), 'Ohio, United States', 6, 4, 3709, 5, 'White', TO_DATE('2015-01-01','YYYY-MM-DD'), 62061 );

 INSERT INTO CarNewCar (VIN, make,model, listPrice, dateOfManufacture, placeOfManufacture, cylinders, doors, weight, capacity, color, delDate, delMiles )
 VALUES ('JF1SF63501H759113', 'Cadillac', 'CTS', 31990.00, TO_DATE('2015-01-01','YYYY-MM-DD'), 'Shanghai, China', 8, 4, 3659, 5, 'Black',  TO_DATE('2015-01-01','YYYY-MM-DD'), 49067 );

 INSERT INTO CarNewCar (VIN, make,model, listPrice, dateOfManufacture, placeOfManufacture, cylinders, doors, weight, capacity, color, delDate, delMiles )
 VALUES ('WBANV93589C133312', 'Infiniti','Q50', 19590.00, TO_DATE('2014-01-01','YYYY-MM-DD'), 'Toyahashi, Japan', 6, 4, 3732, 5, 'Black', TO_DATE('2014-01-01','YYYY-MM-DD'), 98798 );

--  CarOptionsMenu 

INSERT INTO CarOptionsMenu (carOption, price)
 VALUES ('Tinted Glass', 1999.99);

INSERT INTO CarOptionsMenu (carOption, price)
 VALUES ('Power Rear Windows', 599.99);

INSERT INTO CarOptionsMenu (carOption, price)
 VALUES ('2 LCD Monitors In The Front', 1300.00);

INSERT INTO CarOptionsMenu (carOption, price)
 VALUES ('Bluetooth Wireless Phone Connectivity', 799.99);

INSERT INTO CarOptionsMenu (carOption, price)
 VALUES ('Driver And Passenger Door Bins', 199.99);

-- CarNewCar_Options

INSERT INTO CarNewCar_Options (VIN, carOption) 
VALUES ('JH4DB7550SS005262', 'Tinted Glass');

INSERT INTO CarNewCar_Options (VIN, carOption) 
VALUES ('JH4KA3140KC015221', 'Tinted Glass');

INSERT INTO CarNewCar_Options (VIN, carOption) 
VALUES ('JH4KA3140KC015221', 'Power Rear Windows');

INSERT INTO CarNewCar_Options (VIN, carOption) 
VALUES ('1G3NF52E3XC403652', 'Bluetooth Wireless Phone Connectivity');

INSERT INTO CarNewCar_Options (VIN, carOption) 
VALUES ('WBANV93589C133312', 'Driver And Passenger Door Bins');

-- CarCustomizationMenu 

INSERT INTO CarCustomizationMenu (customItem, price) 
VALUES ('Matte black external paint', 5999.99);

INSERT INTO CarCustomizationMenu (customItem, price) 
VALUES ('22 inch chrome wheels', 1000.99);

INSERT INTO CarCustomizationMenu (customItem, price) 
VALUES ('Auto pilot assist', 10999.00);

INSERT INTO CarCustomizationMenu (customItem, price) 
VALUES ('Internal leather upholstery', 800.50);

INSERT INTO CarCustomizationMenu (customItem, price) 
VALUES ('Flood lights', 499.99);

-- CarSalesperson 

INSERT INTO CarSalesperson (empId, firstName, lastName, street,city, state, zip, homeAreaCode,  homePhoneNumber, officeAreaCode, officePhoneNumber, cellAreaCode, cellPhoneNumber, dateHired)
VALUES ('y001', 'Aaron' , 'Judge', '1 E 161 St', 'Bronx', 'NY', 10451, 917,  5559876, 917, 5551234, 917, 5559999, TO_DATE('1992-04-26','YYYY-MM-DD'));

INSERT INTO CarSalesperson (empId, firstName, lastName, street,city, state, zip, homeAreaCode,  homePhoneNumber, officeAreaCode, officePhoneNumber, cellAreaCode, cellPhoneNumber, dateHired)
VALUES ('y002', 'Giancarlo', 'Stanton', '1 E 161 St', 'Bronx', 'NY', 10451, 917,  5559876, 917, 5551234, 917, 5559999,  TO_DATE('1989-11-08','YYYY-MM-DD'));

INSERT INTO CarSalesperson (empId, firstName, lastName, street,city, state, zip, homeAreaCode,  homePhoneNumber, officeAreaCode, officePhoneNumber, cellAreaCode, cellPhoneNumber, dateHired)
VALUES ('y003', 'Anthony', 'Rizzo', '1 E 161 St', 'Bronx', 'NY', 10451, 917,  5559876, 917, 5551234, 917, 5559999, TO_DATE('1989-08-08','YYYY-MM-DD'));

INSERT INTO CarSalesperson (empId, firstName, lastName, street,city, state, zip, homeAreaCode,  homePhoneNumber, officeAreaCode, officePhoneNumber, cellAreaCode, cellPhoneNumber, dateHired)
VALUES ('y004', 'Gerrit', 'Cole', '1 E 161 St', 'Bronx', 'NY', 10451, 917,  5559876, 917, 5551234, 917, 5559999, TO_DATE('1990-09-08','YYYY-MM-DD'));

INSERT INTO CarSalesperson (empId, firstName, lastName, street,city, state, zip, homeAreaCode,  homePhoneNumber, officeAreaCode, officePhoneNumber, cellAreaCode, cellPhoneNumber, dateHired)
VALUES ('y005', 'Aroldis', 'Chapman','1 E 161 St', 'Bronx', 'NY', 10451, 917,  5559876, 917, 5551234, 917, 5559999, TO_DATE('1988-02-08','YYYY-MM-DD'));

-- CarRegistration 

INSERT INTO CarRegistration (registrationNo, plateNo, fee ) 
VALUES ('r001', 'JH4DB7550SS005262', 99.99 );

INSERT INTO CarRegistration (registrationNo, plateNo, fee ) 
VALUES ('r002', 'JH4KA3140KC015221', 109.99 );

INSERT INTO CarRegistration (registrationNo, plateNo, fee ) 
VALUES ('r003', '1G3NF52E3XC403652', 99.99 );

INSERT INTO CarRegistration (registrationNo, plateNo, fee ) 
VALUES ('r004', 'JF1SF63501H759113', 75.00 );

INSERT INTO CarRegistration (registrationNo, plateNo, fee ) 
VALUES ('r005', 'WBANV93589C133312', 109.99 );

--  CarInsurance 

INSERT INTO CarInsurance (insPolicyNo,companyName, street, city,  state, zip, areaCode,  phoneNumber, startDate, endDate  )
VALUES ('p001','Geico', '750 Woodbury Rd', 'Woodbury', 'NY','11797', 800,  2077847, TO_DATE('2021-01-01','YYYY-MM-DD'), TO_DATE('2023-12-31','YYYY-MM-DD')  );

INSERT INTO CarInsurance (insPolicyNo,companyName, street, city,  state, zip, areaCode,  phoneNumber, startDate, endDate  )
VALUES ('p002', 'Allstate', '550 Broadway', 'New York',  'NY', '10012', 800,  2557828, TO_DATE('2021-01-01','YYYY-MM-DD'), TO_DATE('2023-12-31','YYYY-MM-DD')  );

INSERT INTO CarInsurance (insPolicyNo,companyName, street, city,  state, zip, areaCode,  phoneNumber, startDate, endDate  )
VALUES ('p003','Nationwide', 'One Nationwide Plaza', 'Columnbus',  'OH', 43215, 877,  6696877, TO_DATE('2021-01-01','YYYY-MM-DD'), TO_DATE('2023-12-31','YYYY-MM-DD') ) ;

INSERT INTO CarInsurance (insPolicyNo,companyName, street, city,  state, zip, areaCode,  phoneNumber, startDate, endDate  )
VALUES ('p004','Geico', '750 Woodbury Rd', 'Woodbury', 'NY','11797', 800,  2077847,TO_DATE('2021-01-01','YYYY-MM-DD'), TO_DATE('2023-12-31','YYYY-MM-DD')    );

INSERT INTO CarInsurance (insPolicyNo,companyName, street, city,  state, zip, areaCode,  phoneNumber, startDate, endDate  )
VALUES ('p005','Allstate', '550 Broadway', 'New York',  'NY', '10012', 800,  2557828, TO_DATE('2021-01-01','YYYY-MM-DD'), TO_DATE('2023-12-31','YYYY-MM-DD')   );

-- CarFinancing 

INSERT INTO CarFinancing (finPolicyNo,companyName, street, city,state,zip, areaCode,phoneNumber, startDate, amountFinanced, rate,  numberMonths)
VALUES ('f001', 'JP Morgan Chase and Co', '270 Park Avenue', 'New York', 'NY', '10172', 888, 5551234, TO_DATE('2021-10-01','YYYY-MM-DD'), 5000, 0.05,  60);

INSERT INTO CarFinancing (finPolicyNo,companyName, street, city,state,zip, areaCode, phoneNumber,startDate, amountFinanced, rate,  numberMonths)
VALUES ('f002', 'Wells Fargo', '420 Mountgomery Street' , 'San Francisco' ,'CA', '94104', 888, 5551234, TO_DATE('2020-09-01','YYYY-MM-DD'), 8000, .0675,  72);

INSERT INTO CarFinancing (finPolicyNo,companyName, street, city,state,zip, areaCode, phoneNumber, startDate, amountFinanced, rate,  numberMonths)
VALUES ('f003', 'Bank of America', '100 North Tryon Street', 'Charlotte', 'NC','28255', 888, 5551234, TO_DATE('2019-07-01','YYYY-MM-DD'), 12000, .0295,  24);

INSERT INTO CarFinancing (finPolicyNo,companyName, street, city,state,zip, areaCode,phoneNumber, startDate, amountFinanced, rate,  numberMonths)
VALUES ('f004', 'M and T', '397 1st Avenue', 'New York', 'NY', '10010', 888, 5551234, TO_DATE('2021-10-01','YYYY-MM-DD'), 4000, .05,  60);

INSERT INTO CarFinancing (finPolicyNo,companyName, street, city,state,zip, areaCode,phoneNumber, startDate, amountFinanced, rate,  numberMonths)
VALUES ('f005', 'Capital One', '299 Park Avenue', 'New York', 'NY', '10017', 888, 5551234, TO_DATE('2021-10-01','YYYY-MM-DD'), 5000, .05,  60);

--  CarWarranty 

INSERT INTO CarWarranty (warType, cost, period )
VALUES ('New Vehicle Standard Warranty', 0, 12);

INSERT INTO CarWarranty (warType, cost, period )
VALUES ('30-day Used Vehicle Warranty ', 0, 1 );

INSERT INTO CarWarranty (warType, cost, period )
VALUES ('6-month New Vehicle Extended Warranty For parts', 2500, 18 );

INSERT INTO CarWarranty (warType, cost, period )
VALUES ('6-month New Vehicle Extended Warranty For parts and labor', 5000, 18 );

INSERT INTO CarWarranty (warType, cost, period )
VALUES ('1-year New Vehicle Extended Warranty For parts and labor', 8000, 24 );

-- CarUsedCar 

INSERT INTO CarUsedCar (VIN,make, model, cylinders, doors, weight, capacity, color, modelYear, mileage, bookValue)
VALUES ('1FVACYDT19HAJ2694','Toyota', 'Camry LE', 4, 4, 3310, 5, 'Blue', 2020, 4774, 22495);

INSERT INTO CarUsedCar (VIN,make, model, cylinders, doors, weight, capacity, color, modelYear, mileage, bookValue)
VALUES ('1GKLVKED8AJ155580','Buick', 'Enclave', 6, 4, 4359, 6, 'Green', 2018, 17370, 32993);

INSERT INTO CarUsedCar (VIN,make, model, cylinders, doors, weight, capacity, color, modelYear, mileage, bookValue)
VALUES ('JH4KA8250MC004002','Jeep', 'Grand Cherokee', 8, 4, 4618, 6, 'Black', 2018, 29760, 26450);

INSERT INTO CarUsedCar (VIN,make, model, cylinders, doors, weight, capacity, color, modelYear, mileage, bookValue)
VALUES ('JHMZE2H73AS009608','Kia', 'Sorento', 6, 4, 3794, 5, 'Red', 2019, 30071, 26833);

INSERT INTO CarUsedCar (VIN,make, model, cylinders, doors, weight, capacity, color, modelYear, mileage, bookValue)
VALUES ('WDBNG75J32A225892','Ford', 'F-150', 8, 4, 4021, 5, 'White', 2019, 20539, 33950);

-- CarUsedCarFeatures 

INSERT INTO CarUsedCarFeatures (VIN, feature) 
VALUES ('1FVACYDT19HAJ2694', 'Leather seats');

INSERT INTO CarUsedCarFeatures (VIN, feature) 
VALUES ('1FVACYDT19HAJ2694', 'Sunroof/moonroof');

INSERT INTO CarUsedCarFeatures (VIN, feature) 
VALUES ('1GKLVKED8AJ155580', 'Heated seats');

INSERT INTO CarUsedCarFeatures (VIN, feature) 
VALUES ('JH4KA8250MC004002', 'Navigation system');

INSERT INTO CarUsedCarFeatures (VIN, feature) 
VALUES ('JH4KA8250MC004002', 'Blind spot monitoring');

-- CarSale

INSERT INTO CarSale (invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  )
VALUES ('i001', TO_DATE('2021-01-01','YYYY-MM-DD'), 24990, 2217.86, 99.99, NULL,  5000, 22307.85, 0, 3748.50, 20000, 'c001', 'y001','JH4DB7550SS005262', NULL, 'p001', 'Geico', 'f001', 'JP Morgan Chase and Co', NULL,  'r001', '6-month New Vehicle Extended Warranty For parts'  );

INSERT INTO CarSale (invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  )
VALUES ('i002', TO_DATE('2021-02-01','YYYY-MM-DD'), 24990, 2217.86, 99.99, NULL,  5000, 22307.85, 0, 3748.50, 20000, 'c002', 'y002','JH4KA3140KC015221', NULL, 'p002', 'Allstate', 'f002', 'Wells Fargo', NULL,  'r001', '6-month New Vehicle Extended Warranty For parts'  );

INSERT INTO CarSale (invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  )
VALUES ('i003', TO_DATE('2021-03-01','YYYY-MM-DD'), 24990, 2217.86, 99.99, NULL,  5000, 22307.85, 0, 3748.50, 20000, 'c003', 'y003','1G3NF52E3XC403652', NULL, 'p003', 'Nationwide', 'f003', 'Bank of America', NULL,  'r001', '6-month New Vehicle Extended Warranty For parts'  );

INSERT INTO CarSale (invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  )
VALUES ('i004', TO_DATE('2021-04-01','YYYY-MM-DD'), 24990, 2217.86, 99.99, NULL,  5000, 22307.85, 0, 3748.50, 20000, 'c004', 'y004','JF1SF63501H759113', NULL, 'p004', 'Geico', 'f004', 'M and T', NULL,  'r001', '6-month New Vehicle Extended Warranty For parts'  );

INSERT INTO CarSale (invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  )
VALUES ('i005', TO_DATE('2021-05-01','YYYY-MM-DD'), 24990, 2217.86, 99.99, NULL,  5000, 22307.85, 0, 3748.50, 20000, 'c005', 'y005','WBANV93589C133312', NULL, 'p005', 'Allstate', 'f005', 'Capital One', NULL,  'r001', '6-month New Vehicle Extended Warranty For parts'  );

-- CarSale_CustomItem 

INSERT INTO CarSale_CustomItem (invoiceNo, customItem) 
VALUES ('i001', 'Matte black external paint');

INSERT INTO CarSale_CustomItem (invoiceNo, customItem) 
VALUES ('i001', '22 inch chrome wheels');

INSERT INTO CarSale_CustomItem (invoiceNo, customItem) 
VALUES ('i001', 'Auto pilot assist');

INSERT INTO CarSale_CustomItem (invoiceNo, customItem) 
VALUES ('i004', '22 inch chrome wheels');

INSERT INTO CarSale_CustomItem (invoiceNo, customItem) 
VALUES ('i004', 'Flood lights');

--  CarSurvey

INSERT INTO CarSurvey (surveyNumber, dealershipRating, carRating, salespersonRating, invoiceNo)
VALUES ('s001', 5, 5, 5, 'i005');

INSERT INTO CarSurvey (surveyNumber, dealershipRating, carRating, salespersonRating, invoiceNo)
VALUES ('s002', 4, 4, 4, 'i004');

INSERT INTO CarSurvey (surveyNumber, dealershipRating, carRating, salespersonRating, invoiceNo)
VALUES ('s003', 3, 3, 3, 'i003');

INSERT INTO CarSurvey (surveyNumber, dealershipRating, carRating, salespersonRating, invoiceNo)
VALUES ('s004', 2, 2, 2, 'i002');

INSERT INTO CarSurvey (surveyNumber, dealershipRating, carRating, salespersonRating, invoiceNo)
VALUES ('s005', 1, 1, 1, 'i001');
