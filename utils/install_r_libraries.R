# Required packages list
packages <- c(
    'scales',
    'OIsurv',
    'data.table',
    'dplyr',
    'ggplot2',
    'Metrics',
    'corrr',
    'tidygraph',
    'cowplot',
    'tabplot',
    'tidyquant',
    'gridExtra',
    'ggpubr',
    'tm',
    'wordcloud',
'forcats',
'rtweet'    
) 
  
# Install packages not found in local machine
if(any(!(packages %in% installed.packages()))){
  install.packages(packages[!(packages %in% installed.packages())], repos="http://cran.r-project.org")
}

# Require all packages
result <- suppressMessages(lapply(packages, require, character.only = TRUE))