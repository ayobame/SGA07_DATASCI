library(pacman)
pacman::p_load(data.table,tidyverse,lubridate,ggplot2, dplyr, corrplot, cowplot)

### Importing all loans data set
Loans <- fread('all_loans.csv', stringsAsFactors = F, drop = c('PRODUCT_NAME', 'LOAN_REF', 'CURRENCY'))
View(Loans)

### 278505 obs. of  7 variables in All_loans.csv 
### CUSTOMER_UNIQUE_ID <int>
### PRODUCT_CODE       <chr>
### BOOK_DATE          <chr>
### MATURITY_DATE      <chr>
### AMOUNT_FINANCED    <dbl>
### ACCOUNT_STATUS     <chr>
### MASKED_ACCOUNT     <chr>

str(Loans)
dim(Loans)
names(Loans)
glimpse(Loans)

## Measures
range(Loans$AMOUNT_FINANCED)  
### min = 0.1 
### max value = 540484208.6
mean(Loans$AMOUNT_FINANCED) 
### Mean = 40671.22
var(Loans$AMOUNT_FINANCED)
### Variance = 1.718835e+12
sd(Loans$AMOUNT_FINANCED)
### Standard Deviation = 1311044
### 278505 Rows and 7 COlumns
str(Loans)
dim(Loans)
names(Loans)
glimpse(Loans)


### Converting Character to date 
Loans$BOOK_DATE <- mdy(Loans$BOOK_DATE)
Loans$MATURITY_DATE <- mdy(Loans$MATURITY_DATE)
Loans$BookedYear <- year(Loans$BOOK_DATE)

### Loans Booked by year
ggplot(Loans, aes(BookedYear)) + geom_bar()

### Number of bookings per year
count(Loans, BookedYear)
### BookedYear      n
### <dbl>  <int>
### 1       2015    162
### 2       2016     97
### 3       2017  19023
### 4       2018 107351
### 5       2019 151872

#### gather(Loans, 'BookedYear', 'n', 4:7 )

### Counts by Product Code
Loanpc <- Loans %>% group_by(PRODUCT_CODE) %>% 
  summarise(count = n()) %>% 
  arrange(desc(count))
view(Loanpc)
ggplot(Loanpc, aes(PRODUCT_CODE ,count)) + geom_col() + theme_classic()


Loanas <- Loans %>% group_by(ACCOUNT_STATUS) %>% 
  summarise(count = n()) %>% 
  arrange(desc(count))
view(Loanas)
count(Loanas, ACCOUNT_STATUS )
count(Loanas, Loanas$count)
## Number of (A,H,L,V) IN account status 
### <chr>          <int>
### 1 A                  1
### 2 H                  246
### 3 L                  28637
### 4 V                  249621

### Account Status Value
ggplot(Loanas, aes(ACCOUNT_STATUS ,count)) + geom_col() + theme_classic()

###
AllLoansagg <- AllLoans %>% aggregate(by = list(CUSTOMER_UNIQUE_ID = CUSTOMER_UNIQUE_ID),FUN=sum)


LoansdF <- AllLoans %>% 
  group_by(CUSTOMER_UNIQUE_ID) %>%
  filter(BOOK_DATE == max(BOOK_DATE))

AllLoansdf <- AllLoans %>% group_by(CUSTOMER_UNIQUE_ID, MASKED_ACCOUNT) %>% 
  summarise(AMOUNT_FINANCED = sum(AMOUNT_FINANCED)) %>% 
  summarise(AMOUNT_FINANCED = sum(AMOUNT_FINANCED))

ggplot(Loanas, aes(ACCOUNT_STATUS ,count)) + geom_col() + theme_half_open()
       
qplot(x=ACCOUNT_STATUS,y=count, data=Loanas, geom = 'point')

ggplot(Loanas,aes(count))+ geom_histogram(binwidth = 5)
