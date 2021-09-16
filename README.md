# Labor-Statistics-ETL
Extract, Transform, Load of Food Prices

Project Proposal: 

We will **extract** 2 CSV files from Kaggle: [employment data from the US Bureau of Labor Statistics](https://www.kaggle.com/andrewmvd/occupation-salary-and-likelihood-of-automation) showing risk of automation by oocupation, and [employment data by salary](https://www.kaggle.com/andrewmvd/occupation-salary-and-likelihood-of-automation?select=occupation_salary.xlsx). We will then **transform** the data by cleaning the automation data to include only relevant rows containing jobs with data in the salary table and filter the salary data to include the "broad" jobs rather than detailed to avoid dupliates. We will treat the SOC field as a primary key in order to **load** the data into a relational database in SQL, for our "automation" and "salary" tables.
 
