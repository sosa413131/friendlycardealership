-- CREATE INDEX vinnew_idx ON newcar_options (VIN);
-- CREATE INDEX caroption_idx ON newcar_options (carOption);
-- CREATE INDEX custId_idx ON sale (custId);

-- CREATE INDEX salespersonId_idx ON sale (salespersonId);
-- CREATE INDEX vinnewcar_idx ON sale (newCarVIN);
-- CREATE INDEX vinusedcar_idx ON sale (usedCarVIN);

-- CREATE INDEX inspolicycompany_idx ON sale (insurancePolicy, insuranceCompany);
-- CREATE INDEX finpolicycompany_idx ON sale (financingPolicy, financingCompany);
-- CREATE INDEX registnumber_idx ON sale (registrationNumber);

-- CREATE INDEX warrantype_idx ON sale (warrantyType);
-- CREATE INDEX customitem_idx ON sale_custom_item (customItem);
-- CREATE INDEX invoicenumber_idx ON sale_custom_item (invoiceNumber);

-- CREATE INDEX invoicenum_idx ON survey (invoiceNumber);
-- CREATE UNIQUE INDEX salespersonname_idx ON salesperson (firstName, lastName);
-- CREATE UNIQUE INDEX customerdrivelicense_idx ON customer (driveLicenseNo);



-- ALTER TABLE CarNewCar_Options ADD CONSTRAINT CarNewCar_Options_VIN_fk FOREIGN KEY (VIN) REFERENCES CarNewCar (VIN);
-- ALTER TABLE CarNewCar_Options ADD CONSTRAINT CarNewCar_Options_carOption_CarOptionsMenu_carOption_fk FOREIGN KEY (carOption) REFERENCES CarOptionsMenu (carOption);
-- ALTER TABLE CarSale ADD CONSTRAINT CarSale_custId_CarCustomer_custId_fk FOREIGN KEY (custId) REFERENCES CarCustomer (custId);

-- ALTER TABLE CarSale ADD CONSTRAINT CarSale_empId_CarSalesperson_empId_fk FOREIGN KEY (empId) REFERENCES CarSalesperson (empId);
-- ALTER TABLE CarSale ADD CONSTRAINT CarSale_newCarVIN_CarNewCar_VIN_pk FOREIGN KEY (newCarVIN) REFERENCES CarNewCar (VIN);
-- ALTER TABLE CarSale ADD CONSTRAINT CarSale_usedCarVIN_CarUsedCar_VIN_fk FOREIGN KEY (usedCarVIN) REFERENCES CarUsedCar (VIN);

-- ALTER TABLE CarSale ADD CONSTRAINT CarSale_insPolNo_insCoName_CarInsurance_insPolNo_insCoName_fk FOREIGN KEY (insPolNo, insCoName) REFERENCES CarInsurance (insPolicyNo, companyName);
-- ALTER TABLE CarSale ADD CONSTRAINT CarSale_finPolNo_finCoName_CarFinancing_finPolNo_finCoName_fk FOREIGN KEY (finPolNo, finCoName) REFERENCES CarFinancing (finPolicyNo, companyName);
-- ALTER TABLE CarSale ADD CONSTRAINT CarSale_registrationNo_CarRegistration_registrationNo_fk FOREIGN KEY (registrationNo) REFERENCES CarRegistration (registrationNo);

-- ALTER TABLE CarSale ADD CONSTRAINT CarSale_warType_CarWarranty_warType_fk FOREIGN KEY (warType) REFERENCES CarWarranty (warType);
-- ALTER TABLE CarSale_CustomItem CONSTRAINT CarSale_CustomItem_invoiceNo_CarSale_invoiceNo_fk FOREIGN KEY (invoiceNo) REFERENCES CarSale (invoiceNo),
-- ALTER TABLE CarSale_CustomItem CONSTRAINT CarSale_CustomItem_customItem_customization_menu_customItem_fk FOREIGN KEY (customItem) REFERENCES customization_menu (customItem);



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

--  CREATE TABLE CarAd (
-- 	placedIn VARCHAR2(255) NOT NULL,
-- 	initialDate DATE NOT NULL,
-- 	totalCost DECIMAL(10,2) NOT NULL,
-- 	frequency NUMBER(3) NOT NULL,
-- 	contactPerson VARCHAR2(255) NOT NULL,
-- 	areaCode NUMBER(3) NOT NULL,
-- 	phoneNumber NUMBER(7) NOT NULL
-- );

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

-- CREATE TABLE CarCustomer (
-- 	custId VARCHAR2(255) NOT NULL,
-- 	firstName VARCHAR2(255) NOT NULL,
-- 	lastName VARCHAR2(255) NOT NULL,
-- 	street VARCHAR2(255),
-- 	city VARCHAR2(255),
-- 	state char(2),
-- 	zip VARCHAR2(5),
-- 	phoneArea NUMBER(3),
-- 	phoneNumber NUMBER(7),
-- 	driveLicenseNo VARCHAR2(255),
-- 	referredBy VARCHAR2(255),
-- 	adSeen VARCHAR2(255));

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

--  CREATE TABLE CarNewCar (
-- 	VIN VARCHAR2(255) NOT NULL,
-- 	make VARCHAR2(255),
-- 	model VARCHAR2(255),
-- 	listPrice DECIMAL(10,2),
-- 	dateOfManufacture DATE,
-- 	placeOfManufacture VARCHAR2(255),
-- 	cylinders NUMBER(1),
-- 	doors NUMBER(1),
-- 	weight NUMBER(7),
-- 	capacity NUMBER(1),
-- 	color VARCHAR2(255),
-- 	delDate DATE,
-- 	delMiles NUMBER(7));


-- JH4DB7550SS005262
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


-- CREATE TABLE CarOptionsMenu (
--   		carOption VARCHAR2(255) NOT NULL,
--   		price DECIMAL(10,2));

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

--  CREATE TABLE CarNewCar_Options (
--   		VIN VARCHAR2(255) NOT NULL,
--   		carOption VARCHAR2(255) NOT NULL);


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

-- CREATE TABLE CarCustomizationMenu (
--   		customItem VARCHAR2(255) NOT NULL,
--   		price DECIMAL(10,2) DEFAULT NULL);

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


-- CREATE TABLE CarSalesperson (		 
-- 	empId VARCHAR2(255) NOT NULL,
-- 	firstName VARCHAR2(255) NOT NULL,
-- 	lastName VARCHAR2(255) NOT NULL,
-- 	street VARCHAR2(255),
-- 	city VARCHAR2(255),
-- 	state VARCHAR2(255),
-- 	zip VARCHAR2(5),
-- 	homeAreaCode NUMBER(3),
-- 	homePhoneNumber NUMBER(7),
-- 	officeAreaCode NUMBER(3),
-- 	officePhoneNumber NUMBER(7),
-- 	cellAreaCode NUMBER(3),
-- 	cellPhoneNumber NUMBER(7),
-- 	dateHired DATE);

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


-- CREATE TABLE CarRegistration (
--   		registrationNo VARCHAR2(255) NOT NULL,
--   		plateNo VARCHAR2(255),
--   		fee DECIMAL(10,2));

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


-- CREATE TABLE CarInsurance (
-- 	insPolicyNo VARCHAR2(255) NOT NULL,
-- 	companyName VARCHAR2(255) NOT NULL,
-- 	street VARCHAR2(255) ,
-- 	city VARCHAR2(255),
-- 	state CHAR(2),
-- 	zip VARCHAR2(5),
-- 	areaCode NUMBER(3),
-- 	phoneNumber  NUMBER(7),
-- 	startDate DATE,
-- 	endDate DATE);
	

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

-- CREATE TABLE CarFinancing (
-- 	finPolicyNo VARCHAR2(255) NOT NULL,
-- 	companyName VARCHAR2(255) NOT NULL,
-- 	street VARCHAR2(255),
-- 	city VARCHAR2(255),
-- 	state CHAR(2),
-- 	zip VARCHAR2(5),
-- 	areaCode NUMBER(3),
-- 	phoneNumber NUMBER(7),
-- 	startDate DATE NOT NULL,
-- 	amountFinanced DECIMAL(10,2) NOT NULL,
-- 	rate DECIMAL(6,6) NOT NULL,
-- 	numberMonths NUMBER(3) NOT NULL);

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


-- CREATE TABLE CarWarranty (
--   		warType VARCHAR2(255) NOT NULL,
--   		cost DECIMAL(10,2),
--   		period NUMBER(3));

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


-- CREATE TABLE CarUsedCar (
--   		VIN VARCHAR2(255) NOT NULL,
--   		make VARCHAR2(255),
--   		model VARCHAR2(255),
--   		cylinders NUMBER(1),
--   		doors NUMBER(1),
--   		weight NUMBER(7),
--   		capacity NUMBER(1),
--   		color VARCHAR2(255),
--   		modelYear NUMBER(7),
--   		mileage NUMBER(7),
--   		bookValue DECIMAL(10,2));

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

-- CREATE TABLE CarUsedCarFeatures (
--   		VIN VARCHAR2(255) NOT NULL,
--   		feature VARCHAR2(255) NOT NULL);

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


-- CREATE TABLE CarSale (
--   		invoiceNo VARCHAR2(255) NOT NULL,
--   		saleDate DATE,
--   		salePrice DECIMAL(10,2),
--   		tax DECIMAL(10,2),
--   		registrationFee DECIMAL(10,2),
--   		tradeInAmount DECIMAL(10,2),
--   		financedAmount DECIMAL(10,2),
--   		amountPaid DECIMAL(10,2),
--   		amountDue DECIMAL(10,2),
--   		commission DECIMAL(10,2),
--   		saleMiles  NUMBER(7),
--   		custId VARCHAR2(255) NOT NULL,
-- 		empId VARCHAR2(255) NOT NULL,
--   		newCarVIN VARCHAR2(255) DEFAULT NULL,
--   		usedCarVIN VARCHAR2(255) DEFAULT NULL,
--   		insPolNo VARCHAR2(255) NOT NULL,
--   		insCoName VARCHAR2(255) NOT NULL,
--   		finPolNo VARCHAR2(255) DEFAULT NULL,
--   		finCoName VARCHAR2(255) DEFAULT NULL,
--   		tradeInVIN VARCHAR2(255),
--   		registrationNo VARCHAR2(255) NOT NULL,
--   		warType VARCHAR2(255) NOT NULL);


INSERT INTO CarSale ('i001', saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  )
VALUES (invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  );

INSERT INTO CarSale ('i002', saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  )
VALUES (invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  );

INSERT INTO CarSale ('i003', saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  )
VALUES (invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  );

INSERT INTO CarSale ('i004', saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  )
VALUES (invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  );

INSERT INTO CarSale ('i005', saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  )
VALUES (invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount,  financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId,newCarVIN, usedCarVIN, insPolNo, insCoName, finPolNo, finCoName, tradeInVIN,  registrationNo, warType  );
