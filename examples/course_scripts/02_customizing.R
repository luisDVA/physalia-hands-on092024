library(ggplot2)
library(palmerpenguins)

#### customizing

# load data
data("penguins")
penguins

# shape and color
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           shape=species,
           color=species))+
  geom_point()


# axis labels de los ejes
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           shape=species,
           color=species))+
  geom_point()+
  labs(x="Bill length",
       y="Flipper Length")

# title, point size, theming
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           shape=species,
           color=species))+
  geom_point(size=3)+
  labs(x="Bill length",
       y="Flipper Length",
       title = "Penguin plot")+
  theme_base()


?pch

# point fill and color
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           shape=species,
           fill=species))+
  geom_point(size=3,color="yellow")+
  scale_shape_manual(values=c(21,22,23))+
  labs(x="Bill length",
       y="Flipper Length",
       title = "Penguin plot")+
  theme_base()


# Change legend title to uppercase

# Add subtitle and caption (see documentation for 'labs()')

# Change the color of the points




