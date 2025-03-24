import pandas as pd 
import matplotlib.pyplot as plt 
import seaborn as sns 
import numpy as np 
import scipy as sts 


# Load the data set 
dataset = pd.read_csv(r'E:\Data Science\20-03-2025 ml Linear Regression(y=mx+c)\Salary_Data.csv')
dataset.head()

x = dataset.iloc[:,:-1]
y = dataset.iloc[:,-1]

from sklearn.model_selection import train_test_split

x_train,x_test, y_train,y_test = train_test_split(x,y , test_size=0.20,random_state=0)

x_train = x_train.values.reshape(-1,1)

x_test = x_test.values.reshape(-1,1)

from sklearn.linear_model import LinearRegression
regressor = LinearRegression()
regressor.fit(x_train,y_train)

y_predict = regressor.predict(x_test)

comparison = pd.DataFrame({'Actual': y_test , 'Predicted':y_predict})

plt.scatter(x_test, y_test, color='red')
plt.plot(x_train , regressor.predict(x_train),color='blue')
plt.title('Salary  Vs Experience (Trainingg Set )')
plt.xlabel("Years of Experience ")
plt.ylabel("Slary")
plt.show()


plt.scatter(x_train,y_train, color='red')
plt.plot(x_train, regressor.predict(x_train), color = 'blue')  # Predicted regression line
plt.title('Salary vs Experinec (Training Testing )')
plt.xlabel('Years of Experince ')
plt.ylabel("Salary")
plt.show()



# Best Fit Line 
coef = print(f"Coefficent :{regressor.coef_}")


intercept = print(f"Intercept : {regressor.intercept_}")


# Future Preedictions code 
exp_12_years =   9312 * 10.5 + 26780
exp_12_years



bias = regressor.score(x_train,y_train)
print(bias)

variance = regressor.score(x_test, y_test)
print(variance)








