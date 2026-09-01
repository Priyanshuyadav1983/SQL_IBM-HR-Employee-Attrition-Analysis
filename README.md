# 📊 HR Attrition Analysis Using SQL

## 📌 Project Overview

Employee attrition is an important HR challenge because high employee turnover can increase recruitment costs, reduce productivity, and affect overall business performance.

In this project, I used **MySQL** to analyze an HR employee dataset and identify the major factors associated with employee attrition.

The analysis focuses on understanding **who is leaving the organization, which departments and employee groups have higher attrition, and which workplace factors may be associated with employee turnover.**

---

## 🎯 Project Objectives

The main objectives of this project are:

* Calculate the **overall employee attrition rate**
* Analyze attrition across different **departments**
* Understand whether **salary levels** are associated with attrition
* Analyze the relationship between **overtime and employee turnover**
* Compare **job satisfaction** with attrition
* Analyze attrition across different **age groups**
* Investigate whether employees with longer **promotion gaps** are more likely to leave
* Identify the **employee profiles with the highest attrition rates**
* Generate HR-focused insights that can support employee retention strategies

---

## 🗂️ Dataset

The project uses an **HR Employee Attrition dataset** containing employee-level information such as:
-- Key Columns
* Age
* Department
* Job Role
* Monthly Income
* Overtime
* Job Satisfaction
* Years Since Last Promotion
* Attrition
  

The main table used for the analysis is:

```sql
hr_attrition
```

---

## 🛠️ Tools & Technologies

* **Database:** MySQL
* **Tool:** MySQL Workbench
* **Language:** SQL
* **Dataset:** HR Employee Attrition Dataset

---

## 💻 SQL Concepts Used

This project helped me apply several important SQL concepts used in real-world data analysis:

* `SELECT`
* `WHERE`
* `CASE WHEN`
* `GROUP BY`
* `HAVING`
* `ORDER BY`
* `LIMIT`
* Aggregate Functions

  * `COUNT()`
  * `SUM()`
  * `AVG()`
* Common Table Expressions (`CTE`)
* Conditional Aggregation
* Data Categorization
* Percentage Calculations
* Data Segmentation

---

# 🔍 Business Questions & Analysis

## 1️⃣ What is the Overall Attrition Rate?

First, I calculated:

* Total number of employees
* Number of employees who left the company
* Overall attrition rate

This provides a baseline for understanding the organization's employee turnover.

---

## 2️⃣ Which Department Has the Highest Attrition?

I calculated the attrition rate for each department to identify departments experiencing higher employee turnover.

This helps HR identify departments that may require further investigation.

---

## 3️⃣ Does Salary Affect Employee Attrition?

Employees were divided into different salary bands:

* Low — Under 3K
* Mid — 3K–6K
* High — Above 6K

The attrition rate was then compared across these salary groups.

This analysis helps determine whether compensation levels are associated with employee turnover.

---

## 4️⃣ Does Overtime Influence Attrition?

I compared employees who:

* Work overtime
* Do not work overtime

and calculated the attrition percentage for both groups.

This helps investigate whether excessive workload or working hours may be associated with higher employee turnover.

---

## 5️⃣ Does Job Satisfaction Affect Attrition?

Job satisfaction scores were converted into meaningful categories:

| Score | Category  |
| ----: | --------- |
|     1 | Low       |
|     2 | Medium    |
|     3 | High      |
|     4 | Very High |

The attrition rate was then compared across satisfaction levels.

---

## 6️⃣ Which Age Group Has the Highest Attrition?

Employees were segmented into different age groups:

* Under 25
* 25–35
* 35–44
* Over 45

For each group, I calculated:

* Total employees
* Attrition percentage
* Average monthly salary

This helps identify whether younger or older employees are more likely to leave.

---

## 7️⃣ Does a Long Promotion Gap Increase Attrition?

Employees were categorized based on the number of years since their last promotion:

* Just promoted
* 1–2 years
* 3–5 years
* Over 5 years

The objective was to investigate whether employees who have been waiting longer for promotion show higher attrition rates.

---

# ⭐ 8️⃣ Employee Profile Analysis

The final analysis combines multiple employee attributes:

* Department
* Job Role
* Overtime
* Average Salary
* Average Years Since Last Promotion
* Total Employees
* Attrition Rate

I grouped employees based on **Department + Job Role + Overtime** and identified the groups with the highest attrition rates.

To avoid unreliable results from very small groups, only groups containing at least **10 employees** were considered.

This is the key analysis of the project because it moves beyond analyzing individual factors and helps identify **employee segments that may require greater retention attention.**

---

# 📈 Key Insights

The analysis can help HR answer questions such as:

* Which departments are experiencing the highest employee turnover?
* Are lower-paid employees more likely to leave?
* Is overtime associated with higher attrition?
* Does employee satisfaction relate to retention?
* Which age groups have higher turnover?
* Are employees staying too long without promotions?
* Which combinations of department, job role, and overtime have the highest attrition?

These insights can help HR teams develop more targeted employee retention strategies.

---

# 💡 Business Recommendations

Based on the analysis, organizations can consider:

### 1. Monitor High-Attrition Departments

Departments with consistently high attrition should be investigated to understand workload, management, compensation, and employee engagement issues.

### 2. Review Overtime

If overtime employees show significantly higher attrition, HR could investigate workload distribution and employee burnout.

### 3. Improve Career Growth Opportunities

Employees with long promotion gaps may require clearer career progression paths and regular performance reviews.

### 4. Review Compensation

If lower salary groups demonstrate substantially higher attrition, compensation and benefits may need further evaluation.

### 5. Focus on Employee Satisfaction

Low job satisfaction groups can be analyzed further through employee feedback and engagement programs.

# 🚀 Conclusion

This project demonstrates how SQL can be used to transform raw employee data into meaningful HR insights.

By analyzing **department, salary, overtime, job satisfaction, age, promotion gaps, and employee profiles**, the project provides a structured approach to understanding employee attrition.

The project also demonstrates practical use of **CTEs, CASE statements, conditional aggregation, GROUP BY, HAVING, aggregate functions, and percentage calculations** in a real-world business analysis scenario.

---

## 👨‍💻 Author

**Priyanshu Yadav**

Aspiring Data Analyst | SQL | Excel | Power BI | Python

---

⭐ If you found this project useful, feel free to explore the SQL queries and analysis.

