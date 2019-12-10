
## Short Description

On August 5th, 2019 the BJP government in India revoked Article 370 of the Indian Constitution. Thereby, revoking the special status which was given to the state in 1947.
December 8th, 2019 marks the 125th day since Kashmir has been in lockdown and communications blackout imposed to prevent protests during which thousands of people, mostly young men, have been detained in Jammu and Kashmir (the India-administered portion of the disputed territory of Kashmir). 
For this project, I scraped approximate 10,000 tweets from the Twitter website on December 8th, 2019.I will demonstrate how to analyze sentiment score based on what people tweeted about Kashmir on that particular day.  My code is divided into following parts;
1.Extracting tweets using Twitter application.
2.Cleaning the tweets for further analysis.
3.Plotting word frequencies and Word Cloud.
4.Sentiment Analysis


## Dependencies



1. R, 3.6.1


#Load Libraries: 
library(tidyverse)
library(rtweet)
library(lubridate)
library(kableExtra)
library(dplyr)
library(tm)
library(wordcloud)
library(twitteR)
library(tidytext)
library(syuzhet)
library(textdata)
library(RColorBrewer)

## Files



#### /

1. Narrative.Rmd: Provides a 2 page narrative of the project, main challenges & limitations, solutions,results and future work.
2. Narrative.pdf: A knitted pdf of 00_Narrative.Rmd. 
3. Slides: .ppt

#### Code/
1. 01_Scraping-tweets.R: Collects data from Twitter using the hashtag #kashmir, and exports data to the file kashmir.csv.
2. 02_Preprocessing_data.R: Loads, cleans, and converts data into Document Term Matrix for further analysis.
3. 03_analysis.R: Conducts sentiment analysis of the twitter data, producing the barplots and wordcloud found in the Results directory.

#### Data/

1. Kashmir.csv: Contains data collected after acraping tweets on 12/08/2019 using rtweet package, using rstats2twitter which is the official app used by rtweet. It is an open source package/library, that enables collecting and analyzing Twitter data from the REST and stream APIs while working in the R environment.


#### Results/

1. word.frequency.pdf: Barplots the most frequent words from Kashmir tweets.
2. wordcloud.pdf: Creates a wordcloud of the of the most frequently used words.
3. barplot1.pdf:Creates sentiment score for Kashmir tweets

## More Information

kanikasisodia@uchicago.edu
