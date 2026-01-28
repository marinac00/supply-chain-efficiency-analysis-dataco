# 📦 Global Supply Chain Efficiency Analysis

### 📊 Executive Summary
**Goal:** Analyze delivery performance across international shipping modes to identify inefficiencies and cost-saving opportunities.
**Result:** Identified a critical SLA breach in 'First Class' shipments and recommended a strategic portfolio consolidation, leading to a potential **$24,300 annual saving**.

![Dashboard Preview](Global Supply Chain Efficiency Analysis.png)
![Dashboard Preview](Images/Global Delay Hotspots.png)
*(Click to view the full interactive design)*

---

## 🛠️ Tools & Technologies
* **Data Processing:** SQL (PostgreSQL) for Cleaning and Data Warehousing.
* **Data Modeling:** Star Schema design (Facts & Dimensions).
* **Visualization:** Power BI (DAX Measures, Bookmark Navigation, Custom UX).
* **Techniques:** SLA Analysis, Pareto Principle (80/20), KPI tracking.
* 
* ## 💾 Data Source
The dataset used for this analysis is the **DataCo Smart Supply Chain for Big Data Analysis**, available publicly.
* [[Link to original dataset](https://data.mendeley.com/datasets/8gx2fvg2k6/5)] 

---

## 🔍 Key Findings & Recommendations

### 1. The "First Class" Promise Failure
* **Problem:** The data revealed a **100% failure rate** for 'First Class' shipments regarding the 1-day delivery promise.
* **Business Risk:** High potential for customer churn and refunds due to missed SLAs.
* **Recommendation:** Recalibrate the website promise to **2-3 days** (creating a safety buffer) while maintaining the premium price point.

### 2. The "Second Class" Inefficiency
* **Problem:** 'Second Class' shipments show an 80% delay rate and generate lower profit margins compared to 'Standard Class'.
* **Strategic Action:** **Discontinue 'Second Class'.**
* **Impact:** By migrating volume to Standard Class, we simplify logistics operations and realize an estimated **$24,300 in annual savings**.

---

## 📂 Project Structure
This repository contains:
* `Global Supply Chain Efficiency.pdf`: The full executive report with geographic drill-downs.
* `SQL_Scripts/`: (Optional) The extraction and transformation logic.
* `Images/`: Dashboard screenshots.

---

### 
* **Author:** Marina Cancela
* **Role:** Data Analyst / BI Developer Jr

