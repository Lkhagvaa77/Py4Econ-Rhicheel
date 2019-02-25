# 1. 3D scatter plot
# 2. Saving graphs
# 3. Customizing graphs


###### Basic 3-D scatterplot
install.packages("scatterplot3d")
library(scatterplot3d)
View(mtcars)
with(mtcars, {
  scatterplot3d(x = mtcars$disp,
                y = mtcars$wt, 
                z = mtcars$mpg,
                main="3-D Scatterplot Example 1")
})
attach(mtcars)

###### Saving graphs
library(ggplot2)
p <- ggplot(mtcars, 
            aes(x = wt , y = mpg)) +
  geom_point()
p
ggsave(p, filename = "mygraph.png")

###### map
install.packages("maps")
library(maps)
library(ggplot2)
thismap = map_data("world")
ggplot(thismap, aes(long, lat, group=group)) +
  geom_polygon(fill="black", colour="blue") +
  ggtitle("Map of World")
ggplot(thismap, aes(long, lat, group=group, fill=region)) + 
  geom_polygon(show.legend = F) +
  ggtitle("Colorful World")



# Customizing graphs

# customize numerical x and y axes
library(ggplot2)
ggplot(mpg, aes(x=displ, y=hwy)) +
  geom_point() +
  scale_x_continuous(breaks = seq(1, 8, 2), 
                     limits=c(1, 7)) +
  scale_y_continuous(breaks = seq(10, 45, 5), 
                     limits=c(10, 45))

#COLOR
# specify fill color manually
library(ggplot2)
View(diamonds)
ggplot(diamonds, aes(x = cut, fill = clarity)) +
  geom_bar() 
  scale_fill_manual(values = c("darkred", "steelblue", 
                               "darkgreen", "gold",
                               "brown", "purple", 
                               "red", "khaki4"))

# scatterplot with labels
data(mtcars)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_text(label = row.names(mtcars))

# scatterplot with non-overlapping labels
data(mtcars)
library(ggrepel)
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point() +
  geom_text_repel(label = row.names(mtcars), 
                  size=3.5,segment.size = 0.5)

# scatterplot with explanatory text
data(mtcars)
library(ggrepel)
txt <- paste("The relationship between car weight",
             "and mileage appears to be roughly linear",
             sep = "\n")
ggplot(mtcars, aes(x = wt, y = mpg)) +
  geom_point(color = "red") +
  geom_text_repel(label = row.names(mtcars), 
                  size=5) +
  ggplot2::annotate("text", 
                    7, 33, 
                    label=txt,
                    color = "blue",
                    hjust = 0.7) +
  theme_bw(base_size = 2)




https://www.littlemissdata.com/blog/maps
https://rkabacoff.github.io/datavis/SavingGraphs.html
