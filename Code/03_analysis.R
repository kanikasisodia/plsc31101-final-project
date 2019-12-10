# Analysis and visualization
## Plotting the frequency of the 10 most frequent words
freq <- colSums(dtm)
freq[1:10]
length(freq)

sort_freq <- sort(freq,decreasing = T)
head(sort_freq)

pdf("word.frequency.pdf")
barplot(sort_freq[1:10], las = 2,
        col = brewer.pal(6,"Dark2"),ylim = c(0,14000), main ="Most frequent words",
        cex= 0.5,cex.names= 0.60,
        ylab = "Word frequencies")
dev.off()


## creating a wordcloud from the most frequent words 
pdf("wordcloud.pdf")
set.seed(110)
wordcloud(names(sort_freq),sort_freq, max.words = 150, colors = brewer.pal(6,"Spectral"))
dev.off()


##Barplot: Sentiment score for Kashmir using nrc disctionary 
nrc <- get_nrc_sentiment(Kashmir.df$text)
head(nrc)
pdf("barplot1.pdf")
barplot(colSums(nrc), las =2,col = brewer.pal(n=10, name="RdBu"),ylim= c(0,12000), cex= 0.5,cex.names= 0.70,ylab = "count", main = "Sentiment Score for Kashmir") 
dev.off()