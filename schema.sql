-- CarAd(placedIn, initialDate, totalCost, frequency, contactPerson, areaCode, phoneNumber)

 CREATE TABLE CarAd (
  		placedIn VARCHAR2(255) NOT NULL,
  		initialDate DATE NOT NULL,
  		totalCost DECIMAL(10,2),
  		frequency NUMBER(3),
  		contactPerson VARCHAR2(45),
  		phoneArea int,
  		phoneNumber int
);

ALTER TABLE CarAd ADD CONSTRAINT CarAd_placedIn_initialDate_pk PRIMARY KEY (placedIn, initialDate);



-- CarCustomer(custId, firstName, lastName, street, city, state, zip, areaCode, phoneNumber, driversLicNo,  referredBy, adSeen)

 

-- CarNewCar(VIN, make, model, listPrice, dateManufactured, placeManufactured, cylinders, doors, weight, capacity, color, delDate, delMiles)

 

-- CarOptionsMenu(carOption, price)

 

-- CarNewCar-Options(VIN, carOption)

 

-- CarCustomizationMenu(customItem, price)

 

-- CarSalesperson(empId, firstName, lastName, street, city, state, zip, homeAreaCode, homePhoneNumber, office AreaCode, officePhoneNumber, cellAreaCode, cellPhoneNumber, dateHired)

 

-- CarRegistration(registrationNo, plateNo, fee)

 

-- CarInsurance(InsPolicyNo, companyName, street, city, state, zip, AreaCode, PhoneNumber, startDate, endDate)

 

-- CarFinancing(FinPolicyNo, companyName, street, city, state, zip, AreaCode, PhoneNumber, startDate, amountFinanced, rate, numberMonths)

 

-- CarWarranty(warType, cost, period)

 

-- CarUsed Car(VIN, make, model, cylinders, doors, weight, capacity, color, modelYear, mileage, bookValue)

 

-- CarUsedCarFeatures(VIN, feature)

 

-- CarSale(invoiceNo, saleDate, salePrice, tax, registrationFee, tradeInAmount, financedAmount, amountPaid, amountDue, commission, saleMiles, custId, empId, newCarVIN, usedCarVIN insPolNo, insCoName, finPolNo,finCoName, tradeInVIN, registrationNo, warType)

 

-- CarSale_CustomItem(invoiceNo, customItem)

 

-- CarSurvey(surveyNumber, dealershipRating, carRating, salespersonRating, invoiceNo)
