library(pacman)
pacman::p_load(data.table,tidyverse,lubridate,ggplot2, dplyr, tidyr)

AllLoans <- fread('all_loans.csv', stringsAsFactors = F, drop = c('PRODUCT_NAME', 'CURRENCY'))
