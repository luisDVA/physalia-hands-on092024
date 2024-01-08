library(ggplot2)
library(palmerpenguins)

#### First plots


# load data
data("penguins")
penguins

# no geom, but mappings
ggplot(penguins,aes(x=bill_length_mm,y=flipper_length_mm))

# add a geom (points)
ggplot(penguins,aes(x=bill_length_mm,y=flipper_length_mm))+
  geom_point()

# add mappings (shape)
ggplot(penguins,aes(x=bill_length_mm,y=flipper_length_mm,shape=species))+
  geom_point()

# shape and color
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           shape=species,
           color=species))+
  geom_point()

# What's happening here?
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           shape=species),
           color=species)+
  geom_point()
