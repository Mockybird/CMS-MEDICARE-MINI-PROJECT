-- CREATING THE DATABASE
create database cms_medicare;

-- IMPORTED THE TABLES FROM EXCEL
use cms_medicare;

-- A QUERY THAT RETURNS THE TOTAL NUMBER OF PROVIDERS PER YEAR

SELECT count(provider_id) as Total_No_Of_Providers
FROM inpatient_chargess_2011
UNION ALL
SELECT count(provider_id) as Total_No_Of_Providers
FROM inpatient_charges_2012
UNION ALL
SELECT count(provider_id) as Total_No_Of_Providers
FROM inpatient_charges_2013
UNION ALL
SELECT count(provider_id) as Total_No_Of_Providers
FROM inpatient_charges_2014
UNION ALL
SELECT count(provider_id) as Total_No_Of_Providers
FROM inpatient_charges_2015;

-- INSIGHT: We maintained the same number of providers across the years. 

-- A QUERY THAT RETURNS THE SUM OF THE AVERAGE COVERED CHARGES FOR EACH YEAR

SELECT '2011' AS Year, CONCAT('$', FORMAT(SUM(average_covered_charges), 0)) AS SumofAvg_CoveredCharges
FROM inpatient_chargess_2011
UNION ALL
SELECT '2012' AS Year,CONCAT('$', FORMAT(SUM(average_covered_charges), 0)) AS SumofAvg_CoveredCharges
FROM inpatient_charges_2012
UNION ALL
SELECT '2013' AS Year, CONCAT('$', FORMAT(SUM(average_covered_charges), 0)) AS SumofAvg_CoveredCharges
FROM inpatient_charges_2013
UNION ALL
SELECT '2014' AS Year, CONCAT('$', FORMAT(SUM(average_covered_charges), 0)) AS SumofAvg_CoveredCharges
FROM inpatient_charges_2014
UNION ALL
SELECT '2015' AS Year, CONCAT('$', FORMAT(SUM(average_covered_charges), 0)) AS SumofAvg_CoveredCharges
FROM inpatient_charges_2015;

-- INSIGHTS: Compared to the first three years, there was a significant increase
-- in the average covered charges in the year 2014 and 2015. 

-- A QUERY THAT RETURNS THE TOTAL NUMBER OF INPATIENTS PER YEAR 

SELECT '2011' AS Year, FORMAT(SUM(total_discharges), 0) AS Total_Inpatient
FROM inpatient_chargess_2011
UNION ALL
SELECT '2012' AS Year, FORMAT(SUM(total_discharges), 0) AS Total_Inpatient
FROM inpatient_charges_2012
UNION ALL
SELECT '2013' AS Year, FORMAT(SUM(total_discharges), 0) AS Total_Inpatient
FROM inpatient_charges_2013
UNION ALL
SELECT '2014' AS Year, FORMAT(SUM(total_discharges), 0) AS Total_Inpatient
FROM inpatient_charges_2014
UNION ALL
SELECT '2015' AS Year, FORMAT(SUM(total_discharges), 0) AS Total_Inpatient
FROM inpatient_charges_2015;

/* INSIGHTS: There was a decline in the number of discharges recorded in 2014 and 2015 
compared to other years. This is either as a result of an increase in the number of inpatients
attended to or longer stays at the hospital.


-- A QUERY THAT RETURNS THE TOTAL AVERAGE ESTIMATED SUBMITTED CHARGES OF OUTPATIENTS PER YEAR 

SELECT '2011' AS Year, concat('$', FORMAT(SUM(average_estimated_submitted_charges), 0)) AS Total_AvgEstimatedCharges
FROM outpatient_charges_2011
UNION ALL
SELECT '2012' AS Year, concat('$', FORMAT(SUM(average_estimated_submitted_charges), 0)) AS Total_AvgEstimatedCharges
FROM outpatient_charges_2012
UNION ALL
SELECT '2013' AS Year, concat('$', FORMAT(SUM(average_estimated_submitted_charges), 0)) AS Total_AvgEstimatedCharges
FROM outpatient_charges_2013
UNION ALL
SELECT '2014' AS Year, concat('$', FORMAT(SUM(average_estimated_submitted_charges), 0)) AS Total_AvgEstimatedCharges
FROM outpatient_charges_2014
UNION ALL
SELECT '2015' AS Year, concat('$', FORMAT(SUM(average_estimated_submitted_charges), 0)) AS Total_AvgEstimatedCharges
FROM outpatient_charges_2015;

-- INSIGHTS: We recorded a great decline in the average estimated charges in the year 2015.


-- A QUERY THAT RETURNS THE SUM OF AVERAGE TOTAL PAYMENTS OF OUTPATIENTS PER YEAR 

SELECT '2011' AS Year, concat('$', FORMAT(SUM(average_total_payments), 0)) AS Sum_AvgTotal_Payments
FROM outpatient_charges_2011
UNION ALL
SELECT '2012' AS Year, concat('$', FORMAT(SUM(average_total_payments), 0)) AS Sum_AvgTotal_Payments
FROM outpatient_charges_2012
UNION ALL
SELECT '2013' AS Year, concat('$', FORMAT(SUM(average_total_payments), 0)) AS Sum_AvgTotal_Payments
FROM outpatient_charges_2013
UNION ALL
SELECT '2014' AS Year, concat('$', FORMAT(SUM(average_total_payments), 0)) AS Sum_AvgTotal_Payments
FROM outpatient_charges_2014
UNION ALL
SELECT '2015' AS Year, concat('$', FORMAT(SUM(average_total_payments), 0)) AS Sum_AvgTotal_Payments
FROM outpatient_charges_2015;

-- INSIGHTS: The average total payment of outpatient charges across the year does not follow a consistent growth process,
-- The reason for this can possibly be attributed to the increase or decrease in the number of outpatients in each year. 



-- A QUERY THAT RETURNS THE TOP 10 MOST USED DRUGS IN 2011 . INCLUDE THE DRUG CODE, PROVIDER NAME AND DRUG DEFINITION

SELECT provider_name, drg_code, drg_definition, total_discharges
FROM inpatient_chargess_2011
ORDER BY total_discharges DESC
LIMIT 10;

-- INSIGHTS: Baystate Medical Center is our most performing provider in terms of number
-- of patients their drugs were used for in 2011. 


select *
from inpatient_chargess_2011;