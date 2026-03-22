# Retail Portfolio Optimization: Margin & Supply Chain Risk
## Executive Summary
This project is a Full Portfolio Health Check of a 100-SKU furniture range. By shifting the focus from simple sales volume to total land cost, I built a diagnostic tool to evaluate how shipping cost, manufacturing delays, and product quality impact the bottom line.

The goal was to identify which products are most vulnerable to global shipping changes and which items are "trapping" the company's cash in long wait times. This tool helps a Buying Team decide exactly where to raise prices and which products to stop selling.

## Analysis Overview & Technical Implementation
To make the data actionable, I used the following technical approaches:

- **Regional Stress Testing (IF/OR Logic):** I simulated a 25% freight increase specifically for high-risk shipping routes (e.g., China and Vietnam). Using IF(OR) formulas, I isolated how regional cost spikes impact the "New Margin" of specific products compared to local sourcing.

- **Inventory Efficiency Audit:** I cross-referenced Manufacturing Lead Times against Units Sold to pinpoint "Dead Capital." This identifies products that tie up company cash for over 12 weeks without providing a high enough sales volume to justify the warehouse space.

- **Quality & Design Review:** I analyzed Regional Return Rates to uncover hidden costs. By identifying factories with return rates over 6%, the business can determine if a product has a high return, it is a sign of a quality issue at the factory or a flaw in the design.

- **Automated Action Status (Nested IFs):** I built a status system that automatically flags a product as "Critical" if it fails two tests: sales below 50 units and a lead time exceeding 10 weeks.

- **Dynamic SKU Risk Profiler (XLOOKUP):** To make the dashboard interactive, I used XLOOKUP and Data Validation dropdowns. This allows a user to select any product SKU and instantly see its health metrics, competitor price gap, and recommended action.

## Strategic Visual & Insights
**1. Interactive SKU Risk Profiler**
This tool allows a user to audit any SKU in seconds. It pulls in real-time data on sales, margins and the price gap versus competitors.
\
![](Automated%20Action%20Status%20Critical.png | width=100)
\
Interactive tool showing a "Critical" risk SKU due to low sales and high lead time.
\
![](Automated%20Action%20Status%20Star.png)
\
The tool identifying a "Star" product with healthy margins.

**2. The Critical Hit List**
An automated list of all products flagged for immediate management review vased on the toxic duo of low sales and long lead times.

**3. Profitability Stress Test (Freight Impact)**
This table isolates products that fall below the 55% margin threshold after 25% regional freight increase. It highlights the previous and post-freight margin.

**4. Supply Chain Efficency (Lead Time vs Units Sold)**
This scatter plot visualises dead captial. Products in the top-left quadrant take the longest to arrive but sell the least.

**5. Portfolio Quadrant (Margin vs. Units Sold)**
A macro-view of the range, separating high-volume heros from low-margin drain products.

**6. Quality Audit: Region Return Rate**
By ranking return rate by country, we can spot quality trends and hidden costs. This identifies regions where production may need to be moved or audited.
![](Region_Return_Rate.png)





