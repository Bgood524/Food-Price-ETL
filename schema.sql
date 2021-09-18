-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "Automation" (
    "id" SERIAL   NOT NULL,
    "SOC" VARCHAR(255)   NOT NULL,
    "OCCUPATION" VARCHAR(255)   NOT NULL,
    "Automation_Probability" FLOAT   NOT NULL,
    "Alabama" INT   NOT NULL,
    "Alaska" INT   NOT NULL,
    "Arizona" INT   NOT NULL,
    "Arkansas" INT   NOT NULL,
    "California" INT   NOT NULL,
    "Colorado" INT   NOT NULL,
    "Connecticut" INT   NOT NULL,
    "Delaware" INT   NOT NULL,
    "District_of_Columbia" INT   NOT NULL,
    "Florida" INT   NOT NULL,
    "Georgia" INT   NOT NULL,
    "Hawaii" INT   NOT NULL,
    "Idaho" INT   NOT NULL,
    "Illinois" INT   NOT NULL,
    "Indiana" INT   NOT NULL,
    "Iowa" INT   NOT NULL,
    "Kansas" INT   NOT NULL,
    "Kentucky" INT   NOT NULL,
    "Louisiana" INT   NOT NULL,
    "Maine" INT   NOT NULL,
    "Maryland" INT   NOT NULL,
    "Massachusetts" INT   NOT NULL,
    "Michigan" INT   NOT NULL,
    "Minnesota" INT   NOT NULL,
    "Mississippi" INT   NOT NULL,
    "Missouri" INT   NOT NULL,
    "Montana" INT   NOT NULL,
    "Nebraska" INT   NOT NULL,
    "Nevada" INT   NOT NULL,
    "New_Hampshire" INT   NOT NULL,
    "New_Jersey" INT   NOT NULL,
    "New_Mexico" INT   NOT NULL,
    "New_York" INT   NOT NULL,
    "North_Carolina" INT   NOT NULL,
    "North_Dakota" INT   NOT NULL,
    "Ohio" INT   NOT NULL,
    "Oklahoma" INT   NOT NULL,
    "Oregon" INT   NOT NULL,
    "Pennsylvania" INT   NOT NULL,
    "Rhode_Island" INT   NOT NULL,
    "South_Carolina" INT   NOT NULL,
    "South_Dakota" INT   NOT NULL,
    "Tennessee" INT   NOT NULL,
    "Texas" INT   NOT NULL,
    "Utah" INT   NOT NULL,
    "Vermont" INT   NOT NULL,
    "Virginia" INT   NOT NULL,
    "Washington" INT   NOT NULL,
    "West_Virginia" INT   NOT NULL,
    "Wisconsin" INT   NOT NULL,
    "Wyoming" INT   NOT NULL,
    CONSTRAINT "pk_Automation" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "Salary" (
    "SOC" VARCHAR(255)   NOT NULL,
    "OCC_TITLE" VARCHAR(255)   NOT NULL,
    "OCC_GROUP" VARCHAR(255)   NOT NULL,
    "TOT_EMP" INT   NOT NULL,
    "EMP_PRSE" FLOAT   NOT NULL,
    "H_MEAN" FLOAT   NOT NULL,
    "A_MEAN" INT   NOT NULL,
    "MEAN_PRSE" FLOAT   NOT NULL,
    "H_PCT10" FLOAT,
    "H_PCT25" FLOAT,
    "H_MEDIAN" FLOAT,
    "H_PCT75" FLOAT,
    "H_PCT90" FLOAT,
    "A_PCT10" INT,
    "A_PCT25" INT,
    "A_MEDIAN" INT,
    "A_PCT75" INT,
    "A_PCT90" INT,
    "ANNUAL" INT   NOT NULL,
    "HOURLY" INT   NOT NULL,
    CONSTRAINT "pk_Salary" PRIMARY KEY (
        "SOC"
     )
);

ALTER TABLE "Automation" ADD CONSTRAINT "fk_Automation_SOC" FOREIGN KEY("SOC")
REFERENCES "Salary" ("SOC");

