# Crowdfunding_ETL

## Category and Subcategory DataFrames
A DataFrame is created in Pandas from the crowdfunding.xlsx Excel file in the Resources folder. The category column data is divided into categories and subcategories, and each DataFrame is exported as a .csv to the Resources folder as category.csv and subcategory.csv.

## Campaign DataFrame
The full crowdfunding DataFrame is modified with Pandas to adjust column data formats and remove irrelevant columns. This cleaned DataFrame is exported as a .csv to the Resources folder as campaign.csv.

## Contacts DataFrame
A DataFrame is created in Pandas from the contacts.xlsx Excel file in the Resources folder. Python iterates through the DataFrame and converts each row to a dictionary using list comprehensions. Extracted data is cleaned and saved as a .csv in the Resources folder as contacts.csv.

## Database Creation
The four .csv files (category.csv, subcategory.csv, campaign.csv, and contacts.csv) are sketched as an ERD and the resulting relationships are used to create a table schema for each .csv file. The schema is saved as crowdfunding_db_schema.sql. The data in each .csv file is loaded into PostGres database and verified. 