# 🛒 Cart Abandonment Analysis Dashboard

## 📌 Project Overview
The **Cart Abandonment Analysis Dashboard** is a data analytics project designed to analyze e-commerce user sessions, identify cart abandonment patterns, and understand the difference between abandoned and purchased sessions.

The project uses **Python, SQL, PostgreSQL, and Power BI** to process event data, calculate key performance indicators (KPIs), and build an interactive dashboard.

## 📊 Dashboard Preview


![Cart Abandonment Dashboard](<powerbi/Screenshot Dashboard.png>)

## 🎯 Objectives
- Analyze customer shopping behavior.
- Identify sessions where users add items to their cart but do not purchase.
- Calculate the cart abandonment rate.
- Compare abandoned sessions with purchased sessions.
- Analyze monthly cart abandonment trends.
- Present insights through an interactive Power BI dashboard.

## 🛠️ Tools & Technologies
- **Python:** Pandas, NumPy
- **SQL:** Data querying and analysis
- **Database:** PostgreSQL
- **Visualization:** Power BI
- **Data Source:** E-commerce behavior event dataset

## 📊 Key Performance Indicators (KPIs)

| KPI | Result |
|---|---:|
| Cart Sessions | 43,924 |
| Abandoned Sessions | 31,992 |
| Purchased Sessions | 11,932 |
| Cart Abandonment Rate | 72.83% |



## 📈 Dashboard Features
- KPI cards for cart sessions, abandoned sessions, purchased sessions, and abandonment rate.
- Monthly cart abandonment rate trend.
- Comparison of abandoned versus purchased sessions.
- Date-range slicer for filtering sessions.
- Interactive filtering for exploring customer-session data.

## 🔄 Project Workflow
1. **Data Processing:** Loaded and cleaned e-commerce event data using Python.
2. **Sessionization:** Grouped events into sessions using a 30-minute inactivity rule.
3. **KPI Calculation:** Calculated cart sessions, abandoned sessions, purchased sessions, and abandonment rate.
4. **SQL Analysis:** Used PostgreSQL to query and analyze session-level data.
5. **Dashboard Development:** Built an interactive Power BI dashboard with KPI cards, charts, and slicers.
6. **Insight Generation:** Examined monthly trends and the relationship between abandoned and purchased sessions.

## 💡 Key Findings
- The initial analysis identified 43,924 sessions containing cart activity.
- 31,992 sessions were classified as abandoned.
- 11,932 sessions were classified as purchased.
- The initial calculated cart abandonment rate was 72.83%.

These findings provide a starting point for understanding potential customer drop-off during the shopping journey.

## 📁 Project Structure

```text
Cart-Abandonment-Analysis/
├── python/
│   ├── cart_abandonment_analysis.ipynb
│   └── output/
│       ├── session_summary.csv
│       └── kpi_summary.csv
├── sql/
│   └── cart_abandonment_queries.sql
├── powerbi/
│   ├── Cart_Abandonment_Analysis.pbix
│   └── dashboard_screenshot.png
└── README.md
```

*Adjust the filenames and folder structure to match the files in your repository.*

## 🚀 How to Use
1. Clone or download this repository.
2. Open the Python notebook and install the required libraries.
3. Run the notebook to process the dataset and generate session-level outputs.
4. Import the CSV outputs into PostgreSQL or use the included SQL queries.
5. Open the `.pbix` file in Power BI Desktop to explore the dashboard.

## 🔮 Future Improvements
- Validate cart-to-purchase matching at the session and product level.
- Analyze abandonment by product category and customer segment, where data supports it.
- Identify common drop-off points in the checkout journey.
- Develop predictive models to estimate abandonment risk.
- Recommend strategies to improve purchase conversion.

## 👨‍💻 Author
**Manik Chand**  
B.Tech – Computer Science & Engineering (Artificial Intelligence)

---

⭐ If you find this project useful, consider starring the repository.
