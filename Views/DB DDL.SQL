-- Table: "Patient"

-- DROP TABLE "Patient";

CREATE TABLE "Patient"
(
  "SendingFacility" character(5) NOT NULL,
  "LocalPatientId" character(50) NOT NULL,
  "BirthTime" date,
  "DeathTime" date,
  "Gender" character(2),
  "CountryOfBirth" character(3),
  "EthnicGroup" character(10),
  "Occupation" character(10),
  "PatientLanguage" character(10),
  "Death" boolean,
  "FamilyDoctor_GPPracticeId" character(20),
  "FamilyDoctor_GPId" character(20),
  "PersonToContactName" character(100),
  "PersonToContact_ContactNumber" character(20) NOT NULL,
  "PersonToContact_ContactNumberType" character(20) NOT NULL,
  "PersonToContact_Relationship" character(20) NOT NULL,
  "ActionCode" character(10) NOT NULL,
  "UpdatedOn" date
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Patient"
  OWNER TO postgres;
  
-- Table: "PatientNumber"

-- DROP TABLE "PatientNumber";

CREATE TABLE "PatientNumber"
(
  "LocalPatientId" character(50) NOT NULL,
  "Number" character(50),
  "CodeSystem" character(50),
  "UpdatedOn" date NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "PatientNumber"
  OWNER TO postgres;

-- Table: "Address"

-- DROP TABLE "Address";

CREATE TABLE "Address"
(
  "LocalPatientId" character(50) NOT NULL,
  "Use" character(10) NOT NULL,
  "FromTime" date,
  "ToTime" date,
  "Street" character(100) NOT NULL,
  "Locality" character(100),
  "Town" character(100) NOT NULL,
  "County" character(100),
  "Postcode" character(10),
  "Country" character(10),
  "UpdatedOn" date NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Address"
  OWNER TO postgres;
  
-- Table: "Name"

-- DROP TABLE "Name";

CREATE TABLE "Name"
(
  "LocalPatientId" character(50) NOT NULL,
  "Use" character(10) NOT NULL,
  "Prefix" character(10),
  "Family" character(60),
  "Given" character(60),
  "Given2" character(60),
  "Suffix" character(10),
  "UpdatedOn" date NOT NULL

)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Name"
  OWNER TO postgres;
  
-- Table: "ContactDetail"

-- DROP TABLE "ContactDetail";

CREATE TABLE "ContactDetail"
(
  "LocalPatientId" character(50) NOT NULL,
  "Use" character(10),
  "Value" character(60),
  "UpdatedOn" date NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "ContactDetail"
  OWNER TO postgres;
  
-- Table: "ProgramMembership"

-- DROP TABLE "ProgramMembership";

CREATE TABLE "ProgramMembership"
(
  "LocalPatientId" character(50) NOT NULL,
  "EnteredBy" character(50),
  "EnteredAt" character(50),
  "ProgramName" character(100) NOT NULL,
  "ProgramDescription" character(100),
  "FromTime" date NOT NULL,
  "ToTime" date,
  "UpdatedOn" date NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "ProgramMembership"
  OWNER TO postgres;

-- Table: "Medication"

-- DROP TABLE "Medication";

CREATE TABLE "Medication"
(
  "LocalPatientId" character(50) NOT NULL,
  "PrescriptionNumber" character(50),
  "FromTime" date NOT NULL,
  "ToTime" date NOT NULL,
  "OrderedBy" character(50),
  "Route" character(5),
  "DrugProductId" character(50) NOT NULL,
  "DrugProductGeneric" character(50),
  "DrugProductLabelName" character(100),
  "DrugProductForm" character(50),
  "DrugProductStrengthUnits" character(50),
  "Frequency" character(50),
  "Comments" character(1000),
  "DoseQuantity" numeric(38,38),
  "Indication" character(100),
  "UpdatedOn" date NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Medication"
  OWNER TO postgres;

-- Table: "Order"

-- DROP TABLE "Order";

CREATE TABLE "Order"
(
  "LocalPatientId" character(50) NOT NULL,
  "PlacerId" character(50) NOT NULL,
  "FillerId" character(50),
  "OrderedBy" character(50),
  "PatientClass" character(5),
  "UpdatedOn" date NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "Order"
  OWNER TO postgres;

-- Table: "OrderItem"

-- DROP TABLE "OrderItem";

CREATE TABLE "OrderItem"
(
  "PlacerId" character(50) NOT NULL,
  "ServiceId" character(50) NOT NULL,
  "SpecimenSource" character(50) NOT NULL,
  "SpecimenAdditives" character(50) NOT NULL,
  "SpecimenReceivedTime" date NOT NULL,
  "SpecimenCollectedTime" date NOT NULL,
  "Duration" character(50),
  "UpdatedOn" date NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "OrderItem"
  OWNER TO postgres;

-- Table: "ResultItem"

-- DROP TABLE "ResultItem";

CREATE TABLE "ResultItem"
(
  "PlacerId" character(50) NOT NULL,
  "ServiceId" character(50) NOT NULL,
  "ObservationValueType" character(2),
  "SubId" character(50),
  "ObservationValue" character(20),
  "ResultValueUnits" character(30),
  "ReferenceRange" character(30),
  "AbnormalFlags" character(50),
  "Status" character(5),
  "ObservationTime" date,
  "Comments" character(1000),
  "ReferenceComment" character(1000),
  "Assay" character(50),
  "UpdatedOn" date NOT NULL
)
WITH (
  OIDS=FALSE
);
ALTER TABLE "ResultItem"
  OWNER TO postgres;
