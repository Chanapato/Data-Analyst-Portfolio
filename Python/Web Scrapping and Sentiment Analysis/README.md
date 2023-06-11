# Python - Web Scrapping and Sentiment Analysis
## Problem Statement
On almost every e-commerce site, there are numerous consumer reviews to either give compliments, suggestions, or complaints about the products, all of which are useful information. 

However, it is crucial that the organisation acknowledges the overall customer experience and satisfaction and makes any necessary adjustments to its course as soon as possible to improve the business's reputation. It is also time and cost-consuming to manually collect the data, read and understand all customer reviews. 
## Overview of the Approach
In this project, I employ web scraping to collect content from a website and apply sentiment analysis to help gather insightful data. Reviews of a particular product from Amazon are scraped by using the requests library to get content from a site and BeautifulSoup is then used to convert them into a structured format for analysis. Since the reviews are not all in one page, so I also use a splash javascript to render multiple web pages to extract all reviews. 

After that, I performed data cleansing and eliminate unwanted keywords, spaces and characters for better analysis. In analysis processes, WordCloud is used to identify popular keywords from the reviews and understand the feedback. Sentiment analysis is also conducted using TextBlob library to identify and analyse the emotional tone of texts from customer reviews.

## Exploratory Data Analysis
From the EDA, it can be seen that this dataset is highly imbalanced since more than 80% of the reviews were positive. The sentiment graph also shows that the majority of the data are plotted on the right, indicating that they contain positive words. The reviews frequently include a significant amount of personal opinion as most subjectivity measures higher than 0.4. Regarding review ratings, 75.7% of buyers provided five stars, while just 7.5% gave one. 

The top 3 trending words when viewing as a whole are good, great, and price. Positive reviews appear to exist for this product. However, it is interesting to note how frequently the words "battery," "life," "time," and "hours" appear in negative feedback. This indicates that while the product is generally reasonably priced, its battery life may be limited to a few hours. Therefore, it would be wise for the business to put more effort into increasing battery life in order to decrease negative comments and grow its customer base.

See the completed code and visualisation for this analysis at [full code](https://github.com/Chanapato/Data-Analyst-Portfolio/blob/main/Python/Web%20Scrapping%20and%20Sentiment%20Analysis/Web%20Scrapping%20and%20Sentiment%20Analysis.ipynb).

