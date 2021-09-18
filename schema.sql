DROP TABLE "Automation";
DROP TABLE "Salary";
DROP TABLE "SOC_keys" CASCADE;
CREATE TABLE "Automation" (
    "id" SERIAL   NOT NULL,
    "SOC" VARCHAR(255)   NOT NULL,
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
    "id" SERIAL   NOT NULL,
    "SOC" VARCHAR(255)   NOT NULL,
    "TOT_EMP" INT   NULL,
    "EMP_PRSE" FLOAT   NULL,
    "H_MEAN" FLOAT   NULL,
    "A_MEAN" INT   NULL,
    "MEAN_PRSE" FLOAT   NULL,
    "H_PCT10" FLOAT   NULL,
    "H_PCT25" FLOAT   NULL,
    "H_MEDIAN" FLOAT   NULL,
    "H_PCT75" FLOAT   NULL,
    "H_PCT90" FLOAT   NULL,
    "A_PCT10" INT   NULL,
    "A_PCT25" INT   NULL,
    "A_MEDIAN" INT   NULL,
    "A_PCT75" INT   NULL,
    "A_PCT90" INT   NULL,
    "ANNUAL_only" INT   NOT NULL,
    "HOURLY_only" INT   NOT NULL,
    CONSTRAINT "pk_Salary" PRIMARY KEY (
        "id"
     )
);

CREATE TABLE "SOC_keys" (
    "SOC_code" VARCHAR(255)   NOT NULL,
    "SOC_title" VARCHAR(255)   NOT NULL,
    "SOC_group" VARCHAR(255)   NOT NULL,
    CONSTRAINT "pk_SOC_keys" PRIMARY KEY (
        "SOC_code"
     )
);

ALTER TABLE "Automation" ADD CONSTRAINT "fk_Automation_SOC" FOREIGN KEY("SOC")
REFERENCES "SOC_keys" ("SOC_code");

ALTER TABLE "Salary" ADD CONSTRAINT "fk_Salary_SOC" FOREIGN KEY("SOC")
REFERENCES "SOC_keys" ("SOC_code");


