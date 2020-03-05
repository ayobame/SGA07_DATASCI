library(pacman)
pacman::p_load(data.table,tidyverse,lubridate,ggplot2, dplyr, corrplot, cowplot)

### Importing all loans data set
Loans <- fread('all_loans.csv', stringsAsFactors = F, drop = c('PRODUCT_NAME', 'LOAN_REF', 'CURRENCY'))
View(Loans)
Loanpc <- Loans %>% group_by(PRODUCT_CODE) %>% 
  summarise(count = n()) %>% 
  arrange(desc(count))
view(Loanpc)

Loanas <- Loans %>% group_by(ACCOUNT_STATUS) %>% 
  summarise(count = n()) %>% 
  arrange(desc(count))
view(Loanas)

### count by date
Loandt <- Loans %>% group_by()

plot(Loanas$ACCOUNT_STATUS, Loanas$count, xlab = 'Account',ylab = 'count')

AllLoansagg <- AllLoans %>% aggregate(by = list(CUSTOMER_UNIQUE_ID = CUSTOMER_UNIQUE_ID),FUN=sum)


AllLoansdff <- AllLoans %>% 
  group_by(CUSTOMER_UNIQUE_ID) %>%
  filter(BOOK_DATE == max(BOOK_DATE))

AllLoansdf <- AllLoans %>% group_by(CUSTOMER_UNIQUE_ID, MASKED_ACCOUNT) %>% 
  summarise(AMOUNT_FINANCED = sum(AMOUNT_FINANCED)) %>% 
  summarise(AMOUNT_FINANCED = sum(AMOUNT_FINANCED))
