# Labor-Statistics-ETL
Extract, Transform, Load of employment data such as liklihood of automation and salary data. 

Project Proposal: 

We will **extract** 2 CSV files from Kaggle: [employment data from the US Bureau of Labor Statistics](https://www.kaggle.com/andrewmvd/occupation-salary-and-likelihood-of-automation) showing risk of automation by oocupation, and [employment data by salary](https://www.kaggle.com/andrewmvd/occupation-salary-and-likelihood-of-automation?select=occupation_salary.xlsx). We will then **transform** the data by cleaning the automation data to include only relevant rows containing jobs with data in the salary table and filter the salary data to include the "broad" jobs rather than detailed to avoid dupliates. We will treat the SOC field as a primary key in order to **load** the data into a relational database in SQL, for our "automation" and "salary" tables.
 
# Report:


There were multiple considerations in the extract phase of our labor statistics files. The original data source included .xls files, so we converted them to csv in order to read them in our jupyter notebook. Additionally, after downloading the data we discussed if we were to clean the automation file to include only some of the states (currently 55 columns in the dataframe). We ultimately decided to keep each states, knowing users may want run automation analyses over individual states. 

There were mulitple data cleaning and formatting techniques utilized when transforming the data in a way it could eventually be imported and loaded to our database tables in PostgreSQL. We formatted our columns by renaming dataframes, changing datatypes (when necessary), and troubleshooting final tweaks in order to load into our tables. There were a few major decisions involved in how to move forward with our original two tables. The first was, would we merge the dataframe in our jupyter notebook, or set up multiple tables with primary/foreign keys relating to the SOC Codes to link them together. We ultimately decided to keep automation and salary data separate, and created a third dataframe solely to hold the SOC Code information. That soc_df contained the primary key for the SOC codes, which became foreign keys for the automation and salary tables in order to link all the data together. We also ran into an issue with some of the salary data, as the original data sources utilized a "#" symbol when an hourly wage was greater than $100 per hour and an annual wage greater than $208,000. In order to keep the data in a a format where statistical analyses could be run without inserting values to skew the data, we converted each "#" value to a null value, which in essence reads as "we are not sure what this value is." Ultimately we would rather have a database with slight limitations rather than misleading data. Other smaller decisions/cleaning methods while transorming the data inlcude:

- Do we change all the names in the salary and automation tables involving wordy titles or upload a "key" file explaining what each column is (chose key file).
- Should we utilize a DRD tool when creating our SQL tables?
- Using an INT datatype for the yes/no Annual_only with 1s and 0s since SQL does not have a boolean datatype.
- Cleaned the data to remove commas from the salary table to import to INT datatype in SQL.
- Merged the 2010 and 2018 SOC codes for the soc_df in order to inlcude all SOC codes including in both the salary and automation tables.
- When loading our dataframes to SQL we utilized the argument "Index = False" becuase primary keys are already set up in our schema.sql.
- The annual_only and salary_only columns were ultimately changed from bit to INT in our schema.sql, still effectively functioning as a boolean column in the database.

After establishing a database connection to our PostgreSQL database labor_statistics_db, we were successfully able to load our data into our database. The labor_statistics_data is ready for immediate and practical use.  
