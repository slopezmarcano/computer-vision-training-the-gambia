#SLM
#Created:


#--DESCRIPTION--#

#--LIBRARIES--#
suppressPackageStartupMessages(library(tidyverse)) #data wrangling and management
suppressPackageStartupMessages(library(ggthemes)) #ggplot themes
suppressPackageStartupMessages(library(ggtext)) #add and modify text to ggpplot
suppressPackageStartupMessages(library(showtext)) #fonts
font_add_google("Lato") #theme font
showtext_auto()
#suppressPackageStartupMessages(library(arrrow)) #if using big data

#--INSTALL LIBRARIES--#
#install.libraries(c("tidyverse", "ggthemes", "ggtext", "showtext", "arrow"))

#--DATASET--#
data <- read_csv('data/.csv')
#data <- read_parquet('data/.parquet')


#--DATA WRANGLING--#



 
#--VISUALISATIONS--#
plot <- ggplot(data, aes(x = , y = )) +
    labs(
        x= "",
        y = "",
        title = "",
        subtitle = "",
        caption = "Visualization by S Lopez Marcano • .")



#--EXPORTING VISUALISATIONS--#
ggsave('outputs/insert_file_name_here.pdf', width=, height=)