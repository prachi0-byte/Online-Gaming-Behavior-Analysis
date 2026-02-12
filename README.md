# Online Gaming Behavior Analysis

**Project Goal:**  
Analyze player behavior in online games, predict player engagement, and generate actionable business insights.

---

## **Project Description**

This project uses SQL data from an online gaming platform to perform exploratory data analysis (EDA), visualize player behavior, and build a **classification machine learning model** to predict **Engagement Level** (`Low`, `Medium`, `High`).  

The workflow includes:

1. **SQL Data Import**: Load data directly from MySQL into Python.  
2. **Data Cleaning & Preprocessing**: Handle missing values, scale numeric features, encode categorical features.  
3. **Exploratory Data Analysis (EDA)**: Visualize distributions, correlations, and engagement patterns.  
4. **Machine Learning Pipeline**: Build a **RandomForestClassifier** pipeline with preprocessing included to prevent data leakage.  
5. **Model Evaluation**: Test/train split, cross-validation, accuracy, classification report, and confusion matrix.  
6. **Feature Importance & Insights**: Identify which features most affect engagement and provide actionable business insights.

---

## **Data Columns**

- `PlayerID` - Unique player identifier  
- `Age`  
- `Gender`  
- `Location`  
- `GameGenre`  
- `PlayTimeHours`  
- `InGamePurchases`  
- `GameDifficulty`  
- `SessionsPerWeek`  
- `AvgSessionDurationMinutes`  
- `PlayerLevel`  
- `AchievementsUnlocked`  
- `EngagementLevel` - Target (`Low`, `Medium`, `High`)

---

## **How to Run**

1. Open `notebooks/classification_pipeline.ipynb` in **Jupyter Notebook** or **VS Code**.  
2. Connect to your **MySQL database** (or use the CSV version in `data/online_game.csv`).  
3. Run each cell sequentially to reproduce results.

---

## **Results**

- **Test Accuracy:** ~90%  
- **Cross-Validation Score:** ~90%  
- **Top Features:** `PlayTimeHours`, `SessionsPerWeek`, `PlayerLevel`  

---

## **Business Insights**

- Encourage more frequent sessions to increase engagement.  
- High PlayerLevel players are more engaged and spend more.  
- Focus marketing campaigns on highly engaging game genres.

---

## **Dependencies**

- Python 3.9+  
- pandas  
- numpy  
- matplotlib  
- seaborn  
- scikit-learn  
- mysql-connector-python  

Install via:

```bash
pip install -r requirements.txt
