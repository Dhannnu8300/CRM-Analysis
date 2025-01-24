use crm;
select * from crm1;
select Sum(amount) from crm1;
alter table crm1 modify amount int;
UPDATE crm1
SET amount = REPLACE(amount, ' ', '$');

alter table 
crm1 rename column `Account ID` to account_id;

alter table 
crm1 rename column `close date` to close_date;

alter table 
crm1 rename column `Opputunity Status Count` to Opputunity_Status_Count;

alter table 
crm1 rename column `Opputunity Status Count` to Opputunity_Status_Count;

alter table 
crm1 rename column `Oppurtunity Status` to Oppurtunity_Status;

alter table 
crm1 rename column `Created By ID` to Created_By_ID;

alter table 
crm1 rename column `Created by Lead Conversion` to Created_by_Lead_Conversion;

alter table 
crm1 rename column `Lead Conversion List` to Lead_Conversion_List;

alter table 
crm1 rename column `Created Date` to Created_Date;

alter table 
crm1 rename column `Lead Source` to Lead_Source;

alter table 
crm1 rename column `Opportunity ID` to Opportunity_ID;

alter table 
crm1 rename column `Opportunity Type` to Opportunity_Type;

alter table 
crm1 rename column `Closed Won` to Closed_Won;

alter table 
crm1 rename column `Total Won` to Total_Won;

alter table 
crm1 rename column `Expected Amount` to Expected_Amount;

alter table 
crm1 rename column `Close Date - Year` to Close_Year;

alter table 
crm1 rename column `Close Date - Quater` to Close_Quater;

alter table 
crm1 rename column `Close Date - Month` to Close_Month;

alter table 
crm1 rename column `Close Date - Day` to Close_Day;

select count(Expected_Amount) from crm1;

alter table
crm1 modify column Expected_Amount int;

ALTER TABLE crm1
MODIFY COLUMN Expected_Amount int;

select count(Oppurtunity_Status) as Active_Opportunities from crm1 where Oppurtunity_Status = "Active";

Select close_year, sum(closed_won), count(Account_id) from crm1 group by close_year;

select (sum(Closed_won)/Count(Account_id))*100 as `Won Rate` from crm1;

select industry, count(Oppurtunity_Status) from crm1 group by industry;

select close_year, count(Oppurtunity_Status), count(account_id) from crm1 where Oppurtunity_Status = "Active" group by close_year;

use crm2;

select sum(`Expected Amount`) from crm2;
alter table crm2
modify column `Expected Amount` int;

alter table crm2
rename column `Push Count` to push_count;


alter table crm2
drop  column push_count;

select sum(`Total Leads`) from crm2.lead;

select (SUM(`Conversion Rate`)/COUNT(`Lead ID`)*100) as `Conversion Rate` from crm2.lead;

alter table crm2.lead
rename column `# Converted Accounts` to converted_accounts;

alter table crm2.lead
rename column `# Converted Opportunities` to converted_opportunities;

select sum(converted_accounts) as `Total Converted Accounts` from crm2.lead;

select sum(converted_opportunities) as `Total Converted Opportunities` from crm2.lead;

select `Lead Source`, count(`Lead ID`)  from crm2.lead group by `Lead Source` order by `Lead Source`;

select Industry, count(`Lead ID`)  from crm2.lead group by Industry order by Industry;

Select crm2.crm2.`Expected Amount`, converted_accounts from crm2.lead cross join crm2;

SET SQL_SAFE_UPDATES =0 ;
SET GLOBAL log_bin_trust_function_creators = 1; 