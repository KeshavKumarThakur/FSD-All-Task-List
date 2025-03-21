import numpy as np  
import matplotlib.pyplot as plt 
import pandas as pd 

dataset = pd.read_csv(r'E:\Data Sets -Data Frames\New folder (2)\data.csv')

x = dataset.iloc[:, :-1].values  # Features (excluding last column)
y = dataset.iloc[:, 3].values    # Target variable (assuming it's in column index 3)

from sklearn.impute import SimpleImputer

imputer = SimpleImputer()  # Using most frequent value
imputer.fit(x[:, 1:3])  # Fit imputer on columns 1 and 2

x[:, 1:3] = imputer.transform(x[:, 1:3])  # Corrected transformation


from sklearn.preprocessing import LabelEncoder
# label enconder this is an another transfomer which converts cat data to numeric 
# SSimpleImputer -  transformer which fill missing value with para

LabelEncoder_x = LabelEncoder()

LabelEncoder_x.fit_transform(x[:,0])
x[:,0] = LabelEncoder_x.fit_transform(x[:,0])


# impute  value for  dependent varaiable y 
LabelEncoder_y = LabelEncoder()
y = LabelEncoder_y.fit_transform(y)

from sklearn.model_selection import train_test_split
x_train,x_test,y_train,y_test = train_test_split(x,y,test_size=0.2,train_size=0.8,random_state=0)

