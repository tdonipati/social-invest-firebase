# Load libraries

#from pandas.plotting import scatter_matrix
#from matplotlib import pyplot
# from sklearn.model_selection import train_test_split
# from sklearn.model_selection import cross_val_score
# from sklearn.model_selection import StratifiedKFold
# from sklearn.metrics import classification_report
# from sklearn.metrics import confusion_matrix
# from sklearn.metrics import accuracy_score
# from sklearn.linear_model import LogisticRegression
# from sklearn.tree import DecisionTreeClassifier
# from sklearn.neighbors import KNeighborsClassifier
# from sklearn.discriminant_analysis import LinearDiscriminantAnalysis
# from sklearn.naive_bayes import GaussianNB
# from sklearn.svm import SVC

#import nltk
#nltk.download()
import numpy as np
import pandas as pd
import requests
import json
from textblob import TextBlob

url = "https://wind-bow.glitch.me/twitch-api/channels/freecodecamp"
JSONContent = requests.get(url).json()
content = json.dumps(JSONContent, indent = 4, sort_keys=True)
# print(content)
channels_list = []

        channels_list.append([JSONContent['_id'], JSONContent['display_name'], JSONContent['status'],
                             JSONContent['followers'], JSONContent['views']])
data = pd.DataFrame(channels_list)
print(data.head())


text = "This is Terrible but it is very good"
score = TextBlob(text)
print(score.sentiment)