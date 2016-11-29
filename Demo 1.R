install.packages('wesanderson') 
install.packages('purrr') 
install.packages('listviewer') 
library(dplyr)
library(tidyr)
library(wesanderson) 
library(purrr) 
library(listviewer)
wesanderson <- wes_palettes
# Investigate with the structure (str) command 
str(wesanderson)
# View with the jsonedit function (listviewer package) 
jsonedit(wesanderson)
# Store names as a dataframe 
wes.df <- data.frame(title=names(wesanderson))
# Add colors to dataframe
wes.df <- wes.df %>%           
         mutate(colors = wesanderson,                  
         num.colors = map(colors, length))