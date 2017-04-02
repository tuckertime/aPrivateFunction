library(ggplot2)
library(plotly)

a<-read.csv("/Users/stephentucker/Downloads/Restaurant_flows.csv")

#label your axis
x = ~x
y = ~y
z = ~z

# a$x.ni.[which(a$x.ni. >= 0)] <- 'Positive NI'
# a$x.ni.[which(a$x.ni. < 0)] <- 'Negative NI'
# a$ni <- as.factor(a$ni)
# color = ~am, colors = c('#BF382A', '#0C4B8E')
p <- plot_ly(a, x = x, y = y, z = z , text = ~store_name, color = ifelse(~x < 0,'red','green')) %>%
  add_markers() %>%
  layout(scene = list(xaxis = list(title = 'Net Inflows'),
                      yaxis = list(title = 'Volume orders'),
                      zaxis = list(title = 'Avg Distance (Haversine)')))

p

# Create a shareable link to your chart
# Set up API credentials: https://plot.ly/r/getting-started
# UlHW7WtbSdGnIiU9ZYEN
#chart_link = plotly_POST(p, filename="scatter3d/basic")
#chart_link
