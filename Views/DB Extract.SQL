CREATE VIEW UKRDC_PATIENT AS
SELECT
   "SendingFacility",
   "LocalPatientId",
   "BirthTime",
   "DeathTime",
   "Gender",
   "CountryOfBirth",
   "EthnicGroup",
   "Occupation",
   "PatientLanguage",
   "Death",
   "FamilyDoctor",
   "PersonToContactName",
   "PersonToContact_ContactNumber",
   "PersonToContact_ContactNumberType",
   "PersonToContact_Relationship",
   "ActionCode",
   "UpdatedOn"               
 FROM
    "Patient"            
 ;
 
CREATE VIEW UKRDC_PATIENT_NOS AS
SELECT
   "LocalPatientId",
   "Number",
   "CodeSystem",
   "UpdatedOn"  
FROM 
   "PatientNumber"
 ;
 
CREATE VIEW UKRDC_ADDRESS AS
SELECT
  "LocalPatientId",
  "Use",
  "FromTime" ,
  "ToTime" ,
  "Street" ,
  "Locality" ,
  "Town" ,
  "County" ,
  "Postcode" ,
  "Country" ,
  "UpdatedOn"  
FROM
  "Address"
 ;
   
CREATE VIEW UKRDC_NAME AS
SELECT
  "LocalPatientId",
  "Use",
  "Prefix" ,
  "Family" ,
  "Given" ,
  "Given2" ,
  "Suffix",
  "UpdatedOn"   
FROM
  "Name"
 ; 

CREATE VIEW UKRDC_CONTACT_DETAIL AS
SELECT
  "LocalPatientId",
  "Value",
  "Use"  ,
  "UpdatedOn"  
FROM
  "ContactDetail"
 ;
  
CREATE VIEW UKRDC_MEDICATION AS
SELECT
   "LocalPatientId",
   "PrescriptionNumber",
   "FromTime",
   "ToTime",
   "OrderedBy",
   "Route",
   "DrugProductId",
   "DrugProductGeneric",
   "DrugProductLabelName",
   "DrugProductForm",
   "DrugProductStrengthUnits",
   "Frequency",
   "Comments",
   "DoseQuantity",
   "Indication",
   "UpdatedOn"               
 FROM
    "Medication"     
 ;

CREATE VIEW UKRDC_ORDER AS
SELECT
   "LocalPatientId",
   "PlacerId",
   "FillerId",
   "OrderedBy",
   "PatientClass",
   "UpdatedOn"               
 FROM
    "Order"    
 ;
 
CREATE VIEW UKRDC_ORDER_ITEM AS
SELECT
   "PlacerId",
   "ServiceId",
   "SpecimenSource",
   "SpecimenAdditives",
   "SpecimenReceivedTime",
   "SpecimenCollectedTime",
   "Duration",
   "UpdatedOn"               
 FROM
    "OrderItem"  
 ;
 
CREATE VIEW UKRDC_RESULT_ITEM AS
SELECT
  "PlacerId",
  "ServiceId",
  "ObservationValueType",
  "SubId",
  "ObservationValue",
  "ResultValueUnits" ,
  "ReferenceRange" ,
  "AbnormalFlags" ,
  "Status" ,
  "ObservationTime" ,
  "Comments" ,
  "ReferenceComment" ,
  "Assay" ,
  "UpdatedOn"  
FROM
  "ResultItem"
;

CREATE VIEW UKRDC_COHORT AS
SELECT
  "LocalPatientId"   
FROM
  UKRDC_PATIENT
 ;
