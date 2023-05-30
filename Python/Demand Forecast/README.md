# Machine Learning - Demand Forecast
Demand forecasting has been a major challenge in the food industry for managing inventories and increasing customer satisfaction, particularly in the food-to-go section where the products need to be manufactured in advance. 

A sandwich store is one of the businesses that has had unpredictably fluctuating consumer demand, which has resulted in stock-out or overstock issues. A huge waste has been created everyday at the end of the day

In this case, the real world data was taken from a sandwich shop in London. However, the size of dataset was small which was not recommended to use complex algorithms. Thus, I have decided to test the performance of 4 different models which are a voting ensemble and another 3 standalone models: linear regression, XGBoost, and random forest.

Before training the models, some variables analysis and data preprocessing have been conducted to contribute to increasing the model's accuracy, decreasing the amount of time and resources needed to train it, avoiding overfitting, and making it easier to understand.

A voting regression ensemble model has been proposed for the analysis of food-to-go demand forecasting by using three standalone machine learning algorithms: linear regression, XGBoost, and random forest. This proposed model was used to compare the performance with standalone linear regression, XGBoost, and random forest as well. The results show that the proposed voting model, with an MSE of 84.75, an RMSE of 9.21, an MAE of 8.17 and an R-Square of 0.97, has greater performance than other algorithms.

