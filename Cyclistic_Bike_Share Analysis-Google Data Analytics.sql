-- This SQL project is my Capstone project from the Google 
-- data analytics professional certificate by google through coursera.

 /*The marketing driector of Cyclistic (a fictional bikeshare company in Chicago) belives that the 
 future of this company depends on maximizing the number of annual mebership.
 My team is provided with the task of provding insights into how casual riders and
 annual members use Cyclistic bikes differently. 
 This is to enable the markting team design concepts that will 
 enable them convert causal mebers to annual memberships*/
 
 /* To start with i used powerquerry to load, extract and transformed the data by 
		1. removing duplicates from the ride_id column
        2. created a new column for the RideDuration_min from the start_date and End_date cloumns
        3. created  column for End_hour,Start_hour
        4. Created column for Start_weekday,End_weekday
        5. Created column for Start_month, End_month
        */
        
/*I made sure my data followed the six principles of data quality( Accurate, Completeness, Consistency, Timeliness, Valid, Uniquensss)
The data is from a primary source, hence integrity was good(it was valid)*/

-- create database
DROP DATABASE IF EXISTS cyclistic;
CREATE DATABASE	cyclistic;
USE cyclistic;

-- Load april data from data source to database

load data infile "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\April 2020.csv"
into table `april 2020`
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load august data from data source to database

load data infile "C:\\ProgramData\\MySQL\\\MySQL Server 8.0\\Uploads\\August 2020.csv"
into table `august 2020`
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load dec data from data source to database

load data infile "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Dec 2020.csv"
into table `dec 2020`
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load Jan-Mar data from data source to database

load data infile "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Jan-Mar 2020.csv"
into table `jan-mar 2020`
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load July data from data source to database

load data infile "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\July 2020.csv"
into table `july 2020`
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load June data from data source to database

load data infile "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\June 2020.csv"
into table `june 2020`
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load may data from data source to database

load data infile "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\May 2020.csv"
into table `may 2020`
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load Nov data from data source to database
load data infile "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Nov 2020.csv"
into table `nov 2020`
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load Oct data from data source to database

load data infile "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Oct 2020.csv"
into table `oct 2020`
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load Sept data from data source to database

load data infile "C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\Sept 2020.csv"
into table `sept 2020`
fields terminated by ','
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- created a table called rideshare and loaded all the cyclistic dataset into a single table
insert INTO rideshare
select * from `april 2020`;

insert INTO rideshare
select * from `august 2020`;

insert INTO rideshare
select * from `dec 2020`;

insert INTO rideshare
select * from `jan-mar 2020`;

insert INTO rideshare
select * from `july 2020`;

insert INTO rideshare
select * from `june 2020`;

insert INTO rideshare
select * from `may 2020`;

insert INTO rideshare
select * from `nov 2020`;

insert INTO rideshare
select * from `oct 2020`;

insert INTO rideshare
select * from `sept 2020`;

-- select all the colums in the table
SELECT * from rideshare;

-- numbers of rides Per weekday

select Start_weekday,End_weekday, count(*) AS Rides_Day_of_Week  from rideshare
GROUP BY Start_weekday
ORDER BY Start_weekday;

-- Total numbers of rides by memebership type 

select member_casual, COUNT(*) AS Total_members
from  rideshare
GROUP BY member_casual;-- Total Rides by Ride type

SELECT rideable_type, COUNT(*) AS Total_by_Ridetype  from rideshare
GROUP BY rideable_type;

# numbers of rides by member types per by month#
SELECT member_casual, End_Month, count(*)  from rideshare
GROUP BY End_Month
ORDER BY End_Month;



