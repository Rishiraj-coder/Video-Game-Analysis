# 🎮 Video Game Data Analysis & Dashboard Project

## 📌 Project Overview

This project focuses on analyzing video game data using **Python (EDA), SQL, and Power BI** to uncover insights about game performance, user engagement, and global sales trends.

The goal is to provide **data-driven insights** for developers, publishers, and stakeholders in the gaming industry.

---

## 🎯 Objectives

* Analyze game ratings, engagement, and popularity
* Identify top-performing games, genres, and platforms
* Understand regional sales trends
* Explore relationships between **ratings, wishlist, and sales**
* Build an **interactive Power BI dashboard**

---

## 📂 Datasets Used

### 1️⃣ games.csv (Game Metadata)

Contains:

* Title, Release Date, Team (Developer)
* Rating, Plays, Wishlist, Backlogs
* Genres, Summary

### 2️⃣ vgsales.csv (Sales Data)

Contains:

* Rank, Platform, Genre, Publisher
* Regional sales (NA, EU, JP, Other)
* Global Sales

### 3️⃣ Merged Dataset

Created using SQL JOIN to combine:

* Engagement + Ratings + Sales

---

## 🧹 Data Cleaning & Preprocessing

Performed using **Python (Pandas)**:

* Handled missing values:

  * Ratings → genre-based mean
  * Publisher → "Unknown" / mode
  * Dates → median
* Converted:

  * "K" values → numeric
  * Dates → datetime
* Removed duplicates
* Standardized column names
* Created new features:

  * `release_year`
  * `engagement = plays + wishlist`

---

## 🗄️ SQL Implementation

### Tables Created:

* `games`
* `vgsales`
* `merged_games`

### Key Operations:

* Data import using **MySQL Workbench / LOAD DATA**
* Data cleaning using:

  * `TRIM()`, `LOWER()`
* Merging datasets using:

```sql
SELECT *
FROM games g
LEFT JOIN vgsales v
ON g.Title = v.Name;
```

---

## 📊 Exploratory Data Analysis (EDA)

### 🔹 Games Dataset Insights

* Top-rated games identified
* Developer performance analyzed
* Genre distribution explored
* Wishlist vs backlog patterns studied
* Rating distribution analyzed

### 🔹 Sales Dataset Insights

* North America generates highest sales
* PlayStation/Xbox dominate platforms
* Few games generate majority revenue
* Strong regional genre preferences

### 🔹 Merged Insights

* Weak correlation between rating and sales
* Wishlist indicates potential demand
* Certain genre-platform combinations dominate
* Engagement does not always convert to sales

---

## 📈 Power BI Dashboard

An interactive dashboard was created to visualize:

* 🎮 Top Games by Rating & Sales
* 📊 Platform-wise Sales Distribution
* 🌍 Regional Sales Comparison
* 📅 Sales Trend Over Time
* 🎯 Genre Popularity Analysis
* ⭐ User Engagement Metrics

### 🚀 Features:

* Interactive filters (Year, Genre, Platform)
* Drill-down analysis
* Clean and professional layout

---

## 💼 Business Insights

* Gaming industry is **hit-driven**
* Platform selection is critical
* Marketing impacts success more than ratings alone
* Wishlist and engagement are strong predictors
* Regional preferences must guide strategy

---

## 🚀 Tools & Technologies

* 🐍 Python (Pandas, Matplotlib, Seaborn)
* 🗄️ SQL (MySQL)
* 📊 Power BI
* 📁 Jupyter Notebook

---

## 📌 Key Learnings

* Data cleaning is crucial for accurate analysis
* Combining datasets provides deeper insights
* Visualization helps in storytelling
* Business understanding enhances data analysis



---

## 👨‍💻 Author

**Rishi Raj**


