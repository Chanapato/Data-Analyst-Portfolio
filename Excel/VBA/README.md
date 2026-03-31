# Portfolio Risk Audit & Renewal Strategy Tool (VBA)

## Project Overview
This project is a **VBA-powered Audit Tool** designed to process large-scale insurance datasets (100,000+ rows). The tool solves the challenge of fragmented data by aggregating multi-year policy history into a single **Renewal Dashboard**.

By calculating **Lifetime Loss Ratios** at the point of renewal, the tool allows a user to instantly identify high-risk outliers and "Shock Losses" that require manual intervention before a new quote is issued.

## Dashboard Preview
Below is a screenshot of the automated interface. A user inputs a target Month/Year (e.g., March 2019) and clicks the **'Renewal List'** button. The VBA logic then generates the summarized audit, complete with color-coded risk flags and high-level KPIs like the **Avg. Loss Ratio**.
\
\
<img src="https://github.com/Chanapato/Data-Analyst-Portfolio/blob/main/Excel/VBA/Dashboard.png" width="700" />

## 🚀 Key Features
- **Dynamic Renewal Search:** Users input a target date (Cells C2/C3) to generate a prioritized audit list.
- **Automated Profitability Mapping:** Uses VBA logic to aggregate total premiums and claims for each Unique ID across the entire dataset.
- **Risk-Based Recommendations:** Automated flagging system with color-coded alerts (`RGB` logic):
  - **SHOCK LOSS (>1000% LR):** Critical review required.
  - **UNPROFITABLE (>80% LR):** Suggests price loading.
  - **PROFITABLE:** Standard renewal invitation.
- **Executive Summary:** Real-time calculation of total renewals found and the **Weighted Average Loss Ratio** for the selected cohort.

## Technical Implementation (VBA)
The script (`Final_Master_Dashboard`) demonstrates several key programming and data handling techniques:
- **Efficient Aggregation:** Utilizes `Application.WorksheetFunction.SumIf` to rapidly calculate lifetime totals without complex nested loops.
- **Data Validation:** Includes error handling to ensure user inputs are valid dates.
- **UI Automation:** Employs `Application.ScreenUpdating` to improve performance and `LastRow` detection for scalability.

## Business & Commercial Logic
I built this tool to simulate a real-world **Pricing/Commercial Analyst** workflow:
1. **Isolating Volatility:** By flagging "Shock Losses," the tool separates rare high-cost claims from underlying frequency trends.
2. **Margin Protection:** It identifies unprofitable customers 30 days before renewal, allowing the business to adjust rates and protect the **Store/Portfolio Margin**.
3. **Actionable Insights:** It transforms a raw 105,000-row CSV into a structured "Hit List" for underwriters.

## 📂 Project Resources
* 📥 **[Download The Excel Tool](./Motor_Data.xlsm)** - Download the interactive dashboard to see the full automation in action. (Note: Macros must be enabled).
* 📑 **Documentation:** Technical logic and formulas are embedded within the VBA modules of the workbook.

---
*Note: This project was developed as a self-initiated exercise to demonstrate proficiency in VBA, commercial risk modeling, and data-driven decision making.*
