## Scraping 10000 tweets using the hashtag Kashmir
search.string <- "#kashmir"
no.of.tweets <- 10000
tweets <- search_tweets(search.string, n=no.of.tweets, lang="en")
dim(tweets)

###Converting the raw tweets into a dataframe and writing them into a .csv file
tweets <- as.data.frame(tweets %>% select(1:5))
write_csv(tweets, "/Users/rajsinghrathore/Desktop/K/Kashmir/Kashmir.csv")

