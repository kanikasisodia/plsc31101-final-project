---
output:
  pdf_document:
  
 
---
# plsc31101-final-project
My final project for PLSC31101
## Short Description
On August 5th, 2019 the BJP government revoked Article 370 of the Indian Constitution which gave special status to Jammu & Kashmir. December 8th, 2019 marked the 125th day since Kashmir has been in lockdown and communications blackout imposed to prevent protests during which thousands of people, mostly young men, have been detained in Jammu and Kashmir (the India-administered portion of the disputed territory of Kashmir). 
There has been an exponential surge in the online activity following the government's descision especially on twitter where people share their views and opinions on the subject.

For my project, I have scrapped twitter data on December 6th,2019. There are about 9658 tweets.I am going to demonstrate how we can analyze what people are posting on Twitter on this particular topic (Kashmir).  I aim to  analyze the sentiments of tweets which contain the word Kashmir. My code is divided into following parts:
1.Extracting tweets using Twitter application.
2.Cleaning the tweets for further analysis.
3.Getting sentiment score & Plotting word frequencies.
4.Wordcloud & Sentiment Analysis.

## Dependencies
1. R, 3.6.1

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
1. Narrative.Rmd: 3-5 page narrative of the project, main challenges, solutions, and results.
2. Narrative.pdf: A knitted pdf of 00_Narrative.Rmd. 
3. Slides: Slide1_word.frequency.pdf,
           Slide2_wordcloud.pdf,
           Slide3_barplot.pdf
           
#### Code/
1. 01_Scraping-tweets.R: Collects data from Twitter using the hashtag #kashmir, and exports data to the file kashmir.csv
2. 02_Preprocessing_data.R: Loads, cleans, and converts data into Document Term Matrix for further analysis.
3. 03_analysis.R: Conducts sentiment analysis of the twitter data, producing the barplots and wordcloud found in the Results directory.

#### Data/

1. Kashmir.csv: Contains data collected after acraping tweets on 12/08/2019 using rtweet package, using rstats2twitter which is the official app used by rtweet. It is an open source package/library, that enables collecting and analyzing Twitter data from the REST and stream APIs while working in the R environment.


#### Results/

1. word.frequency.pdf: Barplots the most frequent words from Kashmir tweets.
2. wordcloud.pdf: Creates a wordcloud of the most frequently used words.
3.barplot1:Creates sentiment score for Kashmir tweets