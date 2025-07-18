# Customer Shopping Trends Analysis – Beginner SQL Project
 Includes GitHub Upload
In this project, we source a customer sales trends dataset from Kaggle. We take on the role of customer analytics specialists hired by a large retail store to help them answer one core question:
What should the store stock—and when—in order to maximize sales, reduce lost sales, and minimize dead stock?

## 🧠 Phase 1: Understand the Problem
Begin by reviewing the business context and familiarizing yourself with the dataset. What kind of store is this? What does each column mean? What time period is covered?

## 🔍 Phase 2: Define Your Questions & Plan Your Analysis
Once you understand the dataset and the business challenge, outline the questions you'll use SQL to answer. You may also need to create new features to make your analysis stronger.

✅ Key Questions:
1. How many unique customers have visited the store during the time period provided? (To get a sense of the sample size you're working with.)
2. Should the store stock more male or female clothing? (What % of customers are male vs. female?)
3. What seasons are represented in the data? (Helps us track trends by time period.)
4. What are the most purchased categories and/or items by season? (This will help guide seasonal stocking strategies.)
5. What are the most popular item colors by season? (Color preference can affect buying decisions.)
6. Should stocking strategies vary by store location? (You can also explore if customer gender varies by location.)
7. Which locations are top-performing in terms of customer experience? (Use metrics like frequency of repeat visits or average spend.)
8. Does having more than 10 previous purchases correlate with higher total spend? (Understanding customer loyalty and value.)

## 📌 Summary of Findings & Recommendations
### 1. Customer Base Overview
A total of 3,900 unique customers visited the store during the period analyzed.


68% of customers are male, and 32% are female → Inventory should skew toward male-preferred categories, but female preferences remain a significant minority.


### 2. Seasonal Trends & Stocking Guidance
Distinct seasons captured: Winter, Spring, Summer, Fall.

Most purchased items by season:
Fall: Jackets, hats, handbags, and skirts
Winter: Sunglasses, pants, shirts
Spring: Sweaters, shorts, blouses
Summer: Pants, dresses, jewelry

Implication: Tailor stocking to seasonal demand, with an emphasis on top-selling categories.


### 3. Stocking Should Vary by Location
Location-based analysis (e.g., Montana) shows differing seasonal item preferences.


In Fall, Montana customers prefer handbags, sweaters, and t-shirts—different from national trends.


Recommendation: Implement localized stocking strategies by analyzing sales patterns at each store.


### 4. Top Locations for Customer Experience
Texas and Wisconsin report the highest average review ratings (above 3.88).


Recommendation: Learn from operational practices in high-rated locations and replicate best practices elsewhere.


### 5. High-Value Customers = Repeat Customers
Customers with 10+ previous purchases consistently spend more than others.


Recommendation: Target this group with loyalty campaigns and personalized offers to maximize revenue and retention.

