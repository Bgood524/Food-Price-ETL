# Labor-Statistics-ETL
Extract, Transform, Load of employment data such as liklihood of automation and salary data. 

Project Proposal: 

We will **extract** 2 CSV files from Kaggle: [employment data from the US Bureau of Labor Statistics](https://www.kaggle.com/andrewmvd/occupation-salary-and-likelihood-of-automation) showing risk of automation by oocupation, and [employment data by salary](https://www.kaggle.com/andrewmvd/occupation-salary-and-likelihood-of-automation?select=occupation_salary.xlsx). We will then **transform** the data by cleaning the automation data to include only relevant rows containing jobs with data in the salary table and filter the salary data to include the "broad" jobs rather than detailed to avoid dupliates. We will treat the SOC field as a primary key in order to **load** the data into a relational database in SQL, for our "automation" and "salary" tables.
 
# Report:

[Extract]
There were multiple considerations in the Extract phase of our labor statistics files. The original data source included .xls files, so we converted them to csv in order to read them in our jupyter notebook. Additionally, after downloading the data we discussed if we were to clean the automation file to include only some of the states (currently 55 columns in the dataframe). We ultimately decided to keep each states, knowing users may want run automation analyses over individual states. 

[Transform]
There were mulitple data cleaning and formatting techniques utilized when transforming the data in a way it could eventually be imported to our database tables in PostgreSQL. We formatted columns. There were a few major decisions involved in how to move forward with our two tables. The first was, would we merge the dataframe in our jupyter notebook, or set up multiple tables, with primary/foreign keys relating to the SOC Codes to link them together. We ultimately decided to keep automation and salary data separate, and created a third dataframe solely to hold the SOC Code information. That soc_df contained the primary key for the SOC codes, which became foreign keys for the automation and salary tables in order to hold all the data together. We also ran into an issue with some of the salary data, as the original data sources utilized a "#" symbol whenan hourly wage was greater than $100 per hour and an annual wage greater than $208,000. In order to keep the data in a a format where statistical analyses could be run without inserting values to skew the data, we converted each "#" value with a null value, which in essence reads as "we are not sure what this value is." Ultimately we would rather have a database with slight limitations rather than misleading data.
