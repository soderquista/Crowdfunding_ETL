
DROP TABLE IF EXISTS campaign;
DROP TABLE IF EXISTS contacts;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS subcategory;

CREATE TABLE contacts (
	contact_id INT,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	email VARCHAR(50),
	PRIMARY KEY (contact_id)
)
;

CREATE TABLE category (
	category_id VARCHAR(5),
	category VARCHAR(20),
	PRIMARY KEY (category_id)
)
;

CREATE TABLE subcategory(
	subcategory_id VARCHAR(8),
	subcategory VARCHAR(20),
	PRIMARY KEY (subcategory_id)
)
;

CREATE TABLE campaign(
	cf_id INT,
	contact_id INT,
	company_name VARCHAR(100),
	description VARCHAR(100),
	goal FLOAT,
	pledged FLOAT,
	outcome VARCHAR(10),
	backers_count INT,
	country VARCHAR(2),
	currency VARCHAR(3),
	launched_date Date,
	end_date Date,
	category_id VARCHAR(5),
	subcategory_id VARCHAR(8),
	PRIMARY KEY(cf_id),
	FOREIGN KEY(contact_id)
	REFERENCES contacts(contact_id),
	FOREIGN KEY(category_id)
	REFERENCES category(category_id),
	FOREIGN KEY (subcategory_id)
	REFERENCES subcategory(subcategory_id)
)
;

COPY contacts(contact_id,first_name,last_name,email)
FROM 'C:\Users\Alex\Desktop\DSBC\project2\Crowdfunding_ETL\Resources\contacts.csv'
DELIMITER ','
CSV HEADER;

SELECT *
FROM contacts
;

COPY category(category_id,category)
FROM 'C:\Users\Alex\Desktop\DSBC\project2\Crowdfunding_ETL\Resources\category.csv'
DELIMITER ','
CSV HEADER;

SELECT *
FROM category
;

COPY subcategory(subcategory_id,subcategory)
FROM 'C:\Users\Alex\Desktop\DSBC\project2\Crowdfunding_ETL\Resources\subcategory.csv'
DELIMITER ','
CSV HEADER;

SELECT *
FROM subcategory
;

COPY campaign(cf_id,contact_id,company_name,description,goal,pledged,outcome,backers_count,country,currency,launched_date,end_date,category_id,subcategory_id)
FROM 'C:\Users\Alex\Desktop\DSBC\project2\Crowdfunding_ETL\Resources\campaign.csv'
DELIMITER ','
CSV HEADER;

SELECT *
FROM campaign
;