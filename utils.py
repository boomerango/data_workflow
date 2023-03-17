import numpy as np
import pandas as pd
from sklearn.model_selection import train_test_split 

def preprocess_data(df:pd.DataFrame):
    cust_data = df.fillna(df.mean())
    X, Y  = cust_data.iloc[:,2:].values , cust_data.iloc[:,0].values
    Y = Y.reshape(Y.shape[0],1)
    X_train, X_test, y_train, y_test = train_test_split(X, Y, test_size = 0.2, random_state = 0)
    
    return X_train, X_test, y_train, y_test