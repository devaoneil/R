library(dslabs)
library(tidyverse)
data("murders")
head(murders)

### Part 1: Statistics
murders <- mutate(murders, rate = total / population * 100000)
head(murders)
murders %>% summary()
murders %>% filter(region=='West') %>% summarize(mean(rate))
murders %>% filter(region=='West'|region=='South') %>% summarize(mean(rate))
murders %>% filter(population > median(population)) %>% summarize(mean(rate))
max(murders$rate)
sd(murders$rate)

# determine which state has the highest murder rate
which.max(murders$rate)
murders[which.max(murders$rate),1]

# if you aren't filtering, there is a simple base R way to get a statistic:
mean(murders$population)

# tidyverse method:
murders %>% pull(population) %>% mean()
murders %>% filter(region=='West') %>% pull(population) %>% mean()

# Suggested exercises: http://rafalab.dfci.harvard.edu/dsbook/tidyverse.html#exercises-11


#### Part 2: Visualization
# make scatterplots
murders %>% ggplot() + 
  geom_point(aes(x = population, y = total))
p <- murders %>% ggplot() + 
  geom_point(aes(x = population, y = rate))

# add in state labels (abb)
p2 <- p + geom_text(aes(population, rate, label = abb), nudge_x = 1500000)

# add in axes and plot labels
p2+xlab("Populations") + 
  ylab("Rate of murders") +
  ggtitle("US Gun Murders in 2010")


#do histograms of total murders
murders %>% ggplot() + 
  geom_histogram(aes(x = total))
#do only low population states (less than 10 million)
murders %>% filter(population < 1e7)%>% ggplot() + 
  geom_histogram(aes(x = total))

# Your turn: play with height
data("heights")
head(heights)
# use head() to see what is in this dataframe.
# make histogram for height. 

# Try separate histograms
# males and females. 

# Do some statistics to see means, standard deviations, etc.
# for total, males only, and females only. 
