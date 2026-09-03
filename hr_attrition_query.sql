-- Overall attrition rate

WITH emp_attrition AS 
(
SELECT 
COUNT(*) AS  total_employees,
SUM(CASE WHEN Attrition = "Yes" THEN 1 ELSE 0 END) AS emp_left_company
FROM hr_attrition
)
SELECT 
total_employees,
emp_left_company,
ROUND((emp_left_company / total_employees),2) * 100 as attrition_rate
FROM emp_attrition;



-- Analysis queries

-- Q1: Attrition rate by department
WITH dept_attrition AS 
(
SELECT 
department,
COUNT(*) AS total_employees,
SUM(CASE WHEN Attrition = "Yes" THEN 1 ELSE 0 END) AS emp_left_company
FROM hr_attrition
GROUP BY department
)
SELECT 
department,
total_employees,
emp_left_company,
ROUND(emp_left_company / total_employees * 100,2) as attrition_rate
FROM dept_attrition
ORDER BY attrition_rate DESC;

-- Q2: Does salary affect attrition?
SELECT 
CASE WHEN MonthlyIncome < 3000 THEN "Low (Under 3k)"
	 WHEN MonthlyIncome BETWEEN 3000 AND 6000 THEN "Mid (3k-6k)"
	 ELSE "High (12k+)"
END AS salary_band,
COUNT(*) AS total_employees,
ROUND(SUM(CASE WHEN attrition = "Yes" THEN 1 ELSE 0 END) / COUNT(*) * 100,2) AS attrition_pct
FROM hr_attrition
GROUP BY salary_band
ORDER BY attrition_pct DESC;

-- Q3: Overtime and attrition — biggest factor?

SELECT 
OverTime,
COUNT(*) AS total_employees,
SUM(CASE WHEN attrition = "Yes" THEN 1 ELSE 0 END) AS employees_left,
ROUND(SUM(CASE WHEN attrition = "Yes" THEN 1 ELSE 0 END) / COUNT(*) * 100,2) as attritio_pct
FROM hr_attrition
GROUP BY OverTime;


-- Q4: Job satisfaction vs attrition
SELECT 
jobSatisfaction,
CASE WHEN jobSatisfaction = 1 THEN "Low"
	 WHEN jobSatisfaction = 2 THEN "Medium"
	 WHEN jobSatisfaction = 3 THEN "High"
	 ELSE "Very High"
END AS satisfaction_label,
COUNT(*) AS total_employees,
ROUND(SUM(CASE WHEN attrition = "Yes" THEN 1 ELSE 0 END) / COUNT(*) * 100,2) as attrition_pct
FROM hr_attrition
GROUP BY jobSatisfaction
ORDER BY jobSatisfaction;

-- Q6: Age group analysis

SELECT
CASE WHEN Age < 25 THEN "Under 25"
     WHEN Age BETWEEN 25 AND 35 THEN "25-35"
     WHEN Age BETWEEN 35 AND 45 THEN "35-44"
     ELSE "Over 45"
END AS age_group,
COUNT(*) AS total_employees,
ROUND(SUM(CASE WHEN attrition = "Yes" THEN 1 ELSE 0 END) / COUNT(*) * 100,2) as attrition_pct,
ROUND(AVG(MonthlyIncome),2) as avg_salary
FROM hr_attrition
GROUP BY age_group
ORDER BY attrition_pct DESC;

-- Q7: Years since promotion — do stuck employees leave?

SELECT 
CASE
    WHEN YearsSinceLastPromotion = 0 THEN 'Just promoted'
    WHEN YearsSinceLastPromotion BETWEEN 1 AND 2 THEN '1-2 years'
    WHEN YearsSinceLastPromotion BETWEEN 3 AND 5 THEN '3-5 years'
    ELSE 'Over 5 years'
END AS promotion_gap,
COUNT(*) AS total_employees,
ROUND(SUM(CASE WHEN attrition = "Yes" THEN 1 ELSE 0 END) / COUNT(*) * 100,2) as attrition_pct
FROM hr_attrition
GROUP BY promotion_gap
ORDER BY attrition_pct DESC;

-- Q8: Profile of employees most likely to leave
-- (The money query — this is what you show in an interview)

SELECT 
Department,
JobRole,
OverTime,
ROUND(AVG(MonthlyIncome), 0) AS avg_salary,
ROUND(AVG(YearsSinceLastPromotion), 1) AS avg_years_since_promo,
COUNT(*) AS total_employees,
ROUND(100.0 * SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) / COUNT(*), 2) AS attrition_pct
FROM hr_attrition
GROUP BY Department,JobRole,OverTime
HAVING COUNT(*) >= 10
ORDER BY attrition_pct DESC
LIMIT 15;



