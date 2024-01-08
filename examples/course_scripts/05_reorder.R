library(ggplot2)
library(openintro)
library(forcats)

#### reorder factors

# load data
data("babies_crawl")
babies_crawl

# bar plot
ggplot(babies_crawl,aes(x=birth_month,y=avg_crawling_age))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")

# horizontal bars
ggplot(babies_crawl,aes(x=birth_month,y=avg_crawling_age))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")+
  coord_flip()

# order levels on values from a different variable
ggplot(babies_crawl,aes(x=fct_reorder(birth_month,avg_crawling_age),y=avg_crawling_age))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")+
  coord_flip()

# descending order
ggplot(babies_crawl,
       aes(x=fct_reorder(birth_month,avg_crawling_age,.desc = TRUE),
           y=avg_crawling_age))+
  geom_bar(stat = "identity",fill="#0a4e96",color="black")+
  coord_flip()



# Change x axis title

# Add title

# How could we plot the data with the months in chronological order?

