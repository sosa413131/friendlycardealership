-- CarAd(placedIn, initialDate, totalCost, frequency, contactPerson, areaCode, phoneNumber)

 CREATE TABLE CarAd (
	placedIn VARCHAR2(255) NOT NULL,
	initialDate DATE NOT NULL,
	totalCost DECIMAL(10,2) NOT NULL,
	frequency NUMBER(3) NOT NULL,
	contactPerson VARCHAR2(255) NOT NULL,
	areaCode NUMBER(3) NOT NULL,
	phoneNumber NUMBER(7) NOT NULL
);

ALTER TABLE CarAd ADD CONSTRAINT CarAd_placedIn_initialDate_pk PRIMARY KEY (placedIn,initialDate);

-- CarCustomer(custId, firstName, lastName, street, city, state, zip, areaCode, phoneNumber, driversLicNo,  referredBy, adSeen)

CREATE TABLE CarCustomer (
	custId VARCHAR2(255) NOT NULL,
	custEmail VARCHAR2(255),
	firstName VARCHAR2(255) NOT NULL,
	lastName VARCHAR2(255) NOT NULL,
	street VARCHAR2(255),
	city VARCHAR2(255),
	state char(2),
	zip VARCHAR2(5),
	phoneArea NUMBER(3),
	phoneNumber NUMBER(7),
	driveLicenseNo VARCHAR2(255),
	referredBy VARCHAR2(255),
	adSeen VARCHAR2(255));

	ALTER TABLE CarCustomer ADD CONSTRAINT CarCustomer_custId_pk PRIMARY KEY (custId);


	-- CarNewCar(VIN, make, model, listPrice, dateManufactured, placeManufactured, cylinders, doors, weight, capacity, color, delDate, delMiles)

CREATE TABLE CarNewCar (
	VIN VARCHAR2(255) NOT NULL,
	make VARCHAR2(255),
	model VARCHAR2(255),
	listPrice DECIMAL(10,2),
	dateOfManufacture DATE,
	placeOfManufacture VARCHAR2(255),
	cylinders NUMBER(1),
	doors NUMBER(1),
	weight NUMBER(7),
	capacity NUMBER(1),
	color VARCHAR2(255),
	delDate DATE,
	delMiles NUMBER(7));

	ALTER TABLE CarNewCar ADD CONSTRAINT CarNewCar_VIN_pk PRIMARY KEY (VIN);

-- CarOptionsMenu(carOption, price)

CREATE TABLE CarOptionsMenu (
  		carOption VARCHAR2(255) NOT NULL,
  		price DECIMAL(10,2));

ALTER TABLE CarOptionsMenu ADD CONSTRAINT CarOptionsMenu_carOption_pk PRIMARY KEY (carOption);


-- CarNewCar-Options(VIN, carOption)

CREATE TABLE CarNewCar_Options (
  		VIN VARCHAR2(255) NOT NULL,
  		carOption VARCHAR2(255) NOT NULL);

	ALTER TABLE CarNewCar_Options ADD CONSTRAINT CarNewCar_Options_VIN_carOption_pk PRIMARY KEY (VIN, carOption);
	ALTER TABLE CarNewCar_Options ADD CONSTRAINT CarNewCar_Options_VIN_fk FOREIGN KEY (VIN) REFERENCES CarNewCar (VIN);
	ALTER TABLE CarNewCar_Options ADD CONSTRAINT CarNewCar_Options_carOption_CarOptionsMenu_carOption_fk FOREIGN KEY (carOption) REFERENCES CarOptionsMenu (carOption);

-- CarCustomizationMenu(customItem, price)
CREATE TABLE CarCustomizationMenu (
  		customItem VARCHAR2(255) NOT NULL,
  		price DECIMAL(10,2) DEFAULT NULL);
		  
 ALTER TABLE CarCustomizationMenu ADD CONSTRAINT CarCustomizationMenu_customItem_pk PRIMARY KEY (customItem);

 -- CarSalesperson(empId, firstName, lastName, street, city, state, zip, homeAreaCode, homePhoneNumber, officeAreaCode, officePhoneNumber, cellAreaCode, cellPhoneNumber, dateHired)

CREATE TABLE CarSalesperson (		 
	empId VARCHAR2(255) NOT NULL,
	firstName VARCHAR2(255) NOT NULL,
	lastName VARCHAR2(255) NOT NULL,
	street VARCHAR2(255),
	city VARCHAR2(255),
	state VARCHAR2(255),
	zip VARCHAR2(5),
	homeAreaCode NUMBER(3),
	homePhoneNumber NUMBER(7),
	officeAreaCode NUMBER(3),
	officePhoneNumber NUMBER(7),
	cellAreaCode NUMBER(3),
	cellPhoneNumber NUMBER(7),
	dateHired DATE);

	 ALTER TABLE CarSalesperson ADD CONSTRAINT CarSalesperson_empId_pk PRIMARY KEY (empId);

	 -- CarRegistration(registrationNo, plateNo, fee)

CREATE TABLE CarRegistration (
  		registrationNo VARCHAR2(255) NOT NULL,
  		plateNo VARCHAR2(255),
  		fee DECIMAL(10,2));
		  
	ALTER TABLE CarRegistration ADD CONSTRAINT CarRegistration_registrationNo_pk PRIMARY KEY (registrationNo);

-- CarInsurance(InsPolicyNo, companyName, street, city, state, zip, AreaCode, PhoneNumber, startDate, endDate)

CREATE TABLE CarInsurance (
	insPolicyNo VARCHAR2(255) NOT NULL,
	companyName VARCHAR2(255) NOT NULL,
	street VARCHAR2(255) ,
	city VARCHAR2(255),
	state CHAR(2),
	zip VARCHAR2(5),
	areaCode NUMBER(3),
	phoneNumber  NUMBER(7),
	startDate DATE,
	endDate DATE);
	
ALTER TABLE CarInsurance ADD CONSTRAINT CarInsurance_InsPolicyNo_companyName_PK PRIMARY KEY (insPolicyNo,companyName);

	-- CarFinancing(FinPolicyNo, companyName, street, city, state, zip, AreaCode, PhoneNumber, startDate, amountFinanced, rate, numberMonths)

CREATE TABLE CarFinancing (
	finPolicyNo VARCHAR2(255) NOT NULL,
	companyName VARCHAR2(255) NOT NULL,
	street VARCHAR2(255),
	city VARCHAR2(255),
	state CHAR(2),
	zip VARCHAR2(5),
	areaCode NUMBER(3),
	phoneNumber NUMBER(7),
	startDate DATE NOT NULL,
	amountFinanced DECIMAL(10,2) NOT NULL,
	rate DECIMAL(6,6) NOT NULL,
	numberMonths NUMBER(3) NOT NULL);

	ALTER TABLE CarFinancing ADD CONSTRAINT CarFinancing_finPolicyNo_company_pk PRIMARY KEY (finPolicyNo, companyName);

	
-- CarWarranty(warType, cost, period)

CREATE TABLE CarWarranty (
  		warType VARCHAR2(255) NOT NULL,
  		cost DECIMAL(10,2),
  		period NUMBER(3));

ALTER TABLE CarWarranty ADD CONSTRAINT CarWarranty_warType_pk PRIMARY KEY (warType);

-- CarUsedCar(VIN, make, model, cylinders, doors, weight, capacity, color, modelYear, mileage, bookValue)

CREATE TABLE CarUsedCar (
  		VIN VARCHAR2(255) NOT NULL,
  		make VARCHAR2(255),
  		model VARCHAR2(255),
  		cylinders NUMBER(1),
  		doors NUMBER(1),
  		weight NUMBER(7),
  		capacity NUMBER(1),
  		color VARCHAR2(255),
  		modelYear NUMBER(7),
  		mileage NUMBER(7),
  		bookValue DECIMAL(10,2));

ALTER TABLE CarUsedCar ADD CONSTRAINT CarUsedCar_VIN_pk PRIMARY KEY (VIN);


-- CarUsedCarFeatures(VIN, feature)

CREATE TABLE CarUsedCarFeatures (
  		VIN VARCHAR2(255) NOT NULL,
  		feature VARCHAR2(255) NOT NULL);

ALTER TABLE CarUsedCarFeatures ADD CONSTRAINT CarUsedCarFeatures_VIN_feature_pk PRIMARY KEY (VIN, feature);
ALTER TABLE CarUsedCarFeatures ADD CONSTRAINT CarUsedCarFeatures_VIN_CarUsedCar_VIN_fk FOREIGN KEY (VIN) REFERENCES CarUsedCar(VIN);


-- CarSale(invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount, financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId, newCarVIN, usedCarVIN insPolNo, insCoName, finPolNo,finCoName, tradeInVIN, registrationNo, warType)

CREATE TABLE CarSale (
  		invoiceNo VARCHAR2(255) NOT NULL,
  		saleDate DATE,
  		salePrice DECIMAL(10,2),
  		tax DECIMAL(10,2),
  		registrationFee DECIMAL(10,2),
  		tradeInAmount DECIMAL(10,2),
  		financedAmount DECIMAL(10,2),
  		amountPaid DECIMAL(10,2),
  		amountDue DECIMAL(10,2),
  		commission DECIMAL(10,2),
  		saleMiles  NUMBER(7),
  		custId VARCHAR2(255) NOT NULL,
		empId VARCHAR2(255) NOT NULL,
  		newCarVIN VARCHAR2(255) DEFAULT NULL,
  		usedCarVIN VARCHAR2(255) DEFAULT NULL,
  		insPolNo VARCHAR2(255) NOT NULL,
  		insCoName VARCHAR2(255) NOT NULL,
  		finPolNo VARCHAR2(255) DEFAULT NULL,
  		finCoName VARCHAR2(255) DEFAULT NULL,
  		tradeInVIN VARCHAR2(255),
  		registrationNo VARCHAR2(255) NOT NULL,
  		warType VARCHAR2(255) NOT NULL);


ALTER TABLE CarSale ADD CONSTRAINT CarSale_invoiceNo_pk PRIMARY KEY (invoiceNo);
ALTER TABLE CarSale ADD CONSTRAINT CarSale_custId_CarCustomer_custId_fk FOREIGN KEY (custId) REFERENCES CarCustomer (custId);
ALTER TABLE CarSale ADD CONSTRAINT CarSale_empId_CarSalesperson_empId_fk FOREIGN KEY (empId) REFERENCES CarSalesperson (empId);
ALTER TABLE CarSale ADD CONSTRAINT CarSale_newCarVIN_CarNewCar_VIN_pk FOREIGN KEY (newCarVIN) REFERENCES CarNewCar (VIN);
ALTER TABLE CarSale ADD CONSTRAINT CarSale_usedCarVIN_CarUsedCar_VIN_fk FOREIGN KEY (usedCarVIN) REFERENCES CarUsedCar (VIN);
ALTER TABLE CarSale ADD CONSTRAINT CarSale_insPolNo_insCoName_CarInsurance_insPolNo_insCoName_fk FOREIGN KEY (insPolNo, insCoName) REFERENCES CarInsurance (insPolicyNo, companyName);
ALTER TABLE CarSale ADD CONSTRAINT CarSale_finPolNo_finCoName_CarFinancing_finPolNo_finCoName_fk FOREIGN KEY (finPolNo, finCoName) REFERENCES CarFinancing (finPolicyNo, companyName);
ALTER TABLE CarSale ADD CONSTRAINT CarSale_registrationNo_CarRegistration_registrationNo_fk FOREIGN KEY (registrationNo) REFERENCES CarRegistration (registrationNo);
ALTER TABLE CarSale ADD CONSTRAINT CarSale_warType_CarWarranty_warType_fk FOREIGN KEY (warType) REFERENCES CarWarranty (warType);

-- CarSale_CustomItem(invoiceNo, customItem)

CREATE TABLE CarSale_CustomItem (
 		invoiceNo VARCHAR2(255) NOT NULL,
  		customItem VARCHAR2(255) NOT NULL);

ALTER TABLE CarSale_CustomItem ADD CONSTRAINT CarSale_CustomItem_invoiceNo_customItem_pk PRIMARY KEY (invoiceNo,customItem);
ALTER TABLE CarSale_CustomItem ADD CONSTRAINT CarSale_CustomItem_invoiceNo_CarSale_invoiceNo_fk FOREIGN KEY (invoiceNo) REFERENCES CarSale (invoiceNo);
ALTER TABLE CarSale_CustomItem ADD CONSTRAINT CarSale_CustomItem_customItem_customization_menu_customItem_fk FOREIGN KEY (customItem) REFERENCES CarCustomizationMenu (customItem);

-- CarSurvey(surveyNumber, dealershipRating, carRating, salespersonRating, invoiceNo)
CREATE TABLE CarSurvey (
  		surveyNumber VARCHAR2(255) NOT NULL,
  		dealershipRating NUMBER(1),
		carRating NUMBER(1),
  		salespersonRating NUMBER(1),
  		invoiceNo VARCHAR2(255) NOT NULL);

ALTER TABLE CarSurvey ADD CONSTRAINT CarSurvey_surveyNumber_pk PRIMARY KEY (surveyNumber);
ALTER TABLE CarSurvey ADD CONSTRAINT CarSurvey_invoiceNo_CarSale_invoiceNumber_fk FOREIGN KEY (invoiceNo) REFERENCES CarSale (invoiceNo);