library(ggplot2)
library(openintro)

#### color ramps

# load data
data(starbucks)
starbucks

# create a new facetting variable
starbucks$fat %>% hist
starbucks <- starbucks %>% mutate(low_fat=fat<14)

# initial plot
ggplot(starbucks,
       aes(x=fat,y=calories,shape=low_fat, color=low_fat))+
  geom_point(size=4)+
  labs(x="Fat content",y="Calories", title="Coffee Shop Items")

# split with facet_wrap
ggplot(starbucks,
       aes(x=fat,y=calories,shape=low_fat, color=low_fat))+
  geom_point(size=4)+
  labs(x="Fat content",y="Calories", title="Coffee Shop Items")+
  facet_wrap(~low_fat) # formula notation

ggplot(starbucks,
       aes(x=fat,y=calories,shape=low_fat, color=low_fat))+
  geom_point(size=4)+
  labs(x="Fat content",y="Calories", title="Coffee Shop Items")+
  facet_wrap("low_fat") # quoted variable name


# change columns
ggplot(starbucks,
       aes(x=fat,y=calories,shape=low_fat, color=low_fat))+
  geom_point(size=4)+
  labs(x="Fat content",y="Calories", title="Coffee Shop Items")+
  facet_wrap("low_fat", ncol = 1) # stack in a single column

# Practice:
# Split by item type


# facet grid
# split by two or more variables
ggplot(starbucks,
       aes(x=fat,y=calories,shape=low_fat, color=low_fat))+
  geom_point(size=4)+
  labs(x="Fat content",y="Calories", title="Coffee Shop Items")+
  facet_grid(type~low_fat)

# transpose facets
ggplot(starbucks,
       aes(x=fat,y=calories,shape=low_fat, color=low_fat))+
  geom_point(size=4)+
  labs(x="Fat content",y="Calories", title="Coffee Shop Items")+
  facet_grid(low_fat~type)

# better facet labels
# named vector for facet strips
lowfatvec <- c("TRUE" = "Healthy", "FALSE"="Unhealthy")
lowfatvec

ggplot(starbucks,
       aes(x=fat,y=calories,shape=low_fat, color=low_fat))+
  geom_point(size=4)+
  labs(x="Fat content",y="Calories", title="Coffee Shop Items")+
  facet_grid(low_fat~type,
             labeller = labeller(low_fat=lowfatvec))


# legend is redundant now
ggplot(starbucks,
       aes(x=fat,y=calories,shape=low_fat, color=low_fat))+
  geom_point(size=4)+
  labs(x="Fat content",y="Calories", title="Coffee Shop Items")+
  facet_grid(low_fat~type,
             labeller = labeller(low_fat=lowfatvec))+
  theme(legend.position="none")


