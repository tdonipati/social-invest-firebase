#import nltk
#nltk.download()
import numpy as np
import pandas as pd
import requests
import json
from textblob import TextBlob

#URL is the REST Endpoint. 
#We grab data from our backend using a REST API call and load the data.
#We load the data into a pandas dataframe.

url = "https://wind-bow.glitch.me/twitch-api/channels/freecodecamp"
JSONContent = requests.get(url).json()
content = json.dumps(JSONContent, indent = 4, sort_keys=True)
#print(content)
channels_list = []
channels_list.append([JSONContent['_id'], JSONContent['display_name'], JSONContent['status'],
                             JSONContent['followers'], JSONContent['views']])
data = pd.DataFrame(channels_list)
#print(data.head())


#The loaded data will provide us the description of request
#We will load this description into text and get a sentiment score from TextBlob
#This score will then be sent back to our database, attached to all requests for donations.

#To demonstrate TextBlob capabilities, we have inputted fraud text and legitimate text.
#TextBlob will recognize that fraud text is more negative and highly subjective compared to legitimate text.
fraud_text = "I have 5 kids that desperately need help. We don't have any food, water, or shelter. If we don't get $1 million tomorrow, we will die. Help us!"
legit_text  = "I am a single mother with 1 kid. We lost our husband on July 31st 2020 to COVID. I hope to get back on my feet and earn money for the family. I need 2 months to learn these skills. We would greatly appreciate your help."
score = TextBlob(legit_text)
print(score.sentiment)