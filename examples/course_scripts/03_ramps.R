library(ggplot2)
library(scico)
library(palmerpenguins)

#### color ramps

# load data
data("penguins")
penguins

# color varies with body mass
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           color=body_mass_g))+
  geom_point(size=2.5)


# custom gradient
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           color=body_mass_g))+
  geom_point(size=2.5)+
 scale_color_gradient(low = "blue",high = "pink")

# viridis palette
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           color=body_mass_g))+
  geom_point(size=2.5)+
  scale_color_viridis_c() # c is for continuous

# viridis, inferno palette
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           color=body_mass_g))+
  geom_point(size=2.5)+
  scale_color_viridis_c(option = "inferno") 

# viridis, reverse
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           color=body_mass_g))+
  geom_point(size=2.5)+
  scale_color_viridis_c(direction = -1)

# scico
scico_palette_show()

# scico palettes
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           color=body_mass_g))+
  geom_point(size=2.5)+
  scale_color_scico(palette = 'nuuk')

ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           color=body_mass_g))+
  geom_point(size=2.5)+
  scale_color_scico(palette = 'bamako')

# reverse 
ggplot(penguins,
       aes(x=bill_length_mm,
           y=flipper_length_mm,
           color=body_mass_g))+
  geom_point(size=2.5)+
  scale_color_scico(palette = 'davos', direction = -1)


