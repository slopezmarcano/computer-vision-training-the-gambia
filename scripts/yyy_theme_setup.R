suppressPackageStartupMessages(library(ggthemes)) #ggplot themes
suppressPackageStartupMessages(library(ggtext)) #add and modify text to ggpplot
suppressPackageStartupMessages(library(showtext)) #fonts
font_add_google("Lato") #theme font
showtext_auto()

#--THEMES--#
theme_set(theme_clean(base_family = "Lato"))

theme_update(
  # Set size 20 and colour for both y and x axes
  axis.title = element_text(color = "#404E4D", size = 20),
  # Axes labels are greyish
  axis.text = element_text(color = "#404E4D"),
  strip.text = element_text(colour = "#404E4D", size=20),
  # Set the size of the axes labels and margins.
  axis.text.x = element_text(size = 20, margin = margin(t = 5)),
  axis.text.y = element_text(size = 20, margin = margin(r = 5)),
  # Also, the ticks have a very dark grey color
  axis.ticks = element_line(color = "#333d3d", size = .5),
  # The length of the axis ticks is increased.
  #axis.ticks.length.x = unit(1.3, "lines"),
  #axis.ticks.length.y = unit(.7, "lines"),
  # Remove the grid lines that come with ggplot2 plots by default
  panel.grid = element_blank(),
  # Customize margin values (top, right, bottom, left)
  plot.margin = margin(20, 15, 20, 15),
  # Use a light grey color for the background of both the plot and the panel
  plot.background = element_rect(fill = "grey98", color = "grey98"),
  panel.background = element_rect(fill = "grey98", color = "grey98"),
  strip.background = element_rect(fill='grey98', color = "grey98"),
  panel.border = element_rect(color='#e1dfdf', fill= NA, size=1),
  # Customize title appearence
  plot.title = element_text(
    color = "#404E4D", 
    size = 30, 
    face = "bold",
    margin = margin(t = 15)
  ),
  # Customize subtitle appearence
  plot.subtitle = element_markdown(
    color = "#656363", 
    size = 16,
    lineheight = 1.35,
    margin = margin(t = 15, b = 40)
  ),
  # Title and caption are going to be aligned
  plot.title.position = "plot",
  plot.caption.position = "plot",
  plot.caption = element_text(
    color = "#656363", 
    size = 13,
    lineheight = 1.2, 
    hjust = 0,
    margin = margin(t = 40)), # Large margin on the top of the caption.
  # Remove legend
  legend.position = "none",
  legend.background = element_rect(fill = 'grey98', color = NA), 
  legend.title = element_text(color = "#404E4D", size= 20),
  legend.text =  element_text(color = "#404E4D", size= 18))