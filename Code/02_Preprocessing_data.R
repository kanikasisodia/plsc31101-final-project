####Reading from the imported tweets
Kashmir.df <- read_csv(file = "data/Kashmir.csv")

#Taking out the text part of the data and converting it into a corpus
Kashmir.df$text <- as.character(Kashmir.df$text)
Kashmir <- Corpus(VectorSource(Kashmir.df$text))

## textprocessing: cleaning the twitter data
Textprocessing <- function(x)
{gsub("http[[:alnum:]]*",'', x)
  gsub("http[^[:space:]]*", "", x) ## Remove URLs
  gsub('\\b+RT', '', x) ## Remove RT
  gsub('#\\S+', '', x) ## Remove Hashtags
  gsub('@\\S+', '', x) ## Remove Mentions
  gsub('[[:cntrl:]]', '', x) ## Remove Controls and special characters
  gsub("\\d", '', x) ## Remove Controls and special characters
  gsub("^[[:space:]]*","",x) ## Remove leading whitespaces
  gsub("[[:space:]]*$","",x) ## Remove trailing whitespaces
  
}
Kashmir.corpus <- tm_map(Kashmir.corpus,Textprocessing)

## converting the corpusr into a Document Term Matrix
dtm <- DocumentTermMatrix(Kashmir.corpus,
                          control = list(stopwords = TRUE,
                                         tolower = TRUE,
                                         removeNumbers = TRUE,
                                         removePunctuation = TRUE
                          ))
##converting into a matrix
dtm <- as.data.frame(as.matrix(dtm))


