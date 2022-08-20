library(wordcloud)
library(RColorBrewer)
library(tm)
data=read.csv("D:/tw.csv",sep=",",header=TRUE)
sentimen=data$Kategori
tweet=data$tweet
head(tweet)
data=removeWords(data$tweet, "gojek")
head(data)
data=merge(data, sentimen)

wordcloud(data$x)
wordcloud(data$x, random.order=F)
wordcloud(data$x, random.order=F, scale=c(3, 0.5))
wordcloud(data$x, random.order=F, min.freq=10, colors=brewer.pal(8, "Dark2"))

tweet_pos=data[data$y=="1",]
tweet_pos=tweet_pos$x
head(tweet_pos)
wordcloud(tweet_pos)
wordcloud(tweet_pos, random.order=F)
wordcloud(tweet_pos, random.order=F, scale=c(3, 0.5))
wordcloud(tweet_pos, random.order=F,min.freq=10,colors=brewer.pal(8, "Dark2"))


tweet_neg=data[data$y=="0",]
tweet_neg=tweet_neg$x
head(tweet_neg)
wordcloud(tweet_neg)
wordcloud(tweet_neg, random.order=F)
wordcloud(tweet_neg, random.order=F, scale=c(3, 0.5))
wordcloud(tweet_neg, random.order=F,min.freq=10,colors=brewer.pal(8, "Dark2"))
