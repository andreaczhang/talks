# I want to talk about these

> I have 10 min in total, so can't be too many slides. I want to focus on sql api, purrr,+magritrr, maybe also address tictoc(). then caret and keras, maybe also R.matlab

### Getting data 

SQL 



### Data manipulation

purrr, magritrr



### Additional computation in matlab 

R.matlab



### Classify 

caret, keras

```R
library(RPostgreSQL)
library(readr)    # read file 

# ============== connect to DB 
pw <- {"yourpassword"}
drv <- dbDriver("PostgreSQL")      # loads the PostgreSQL driver

con <- dbConnect(drv, 
                 dbname = "mimicbig",   # database name
                 host = "localhost", 
                 port = 5432,
                 user = "chizhang", 
                 password = pw)

qSelect <- 'SELECT * FROM admissions;'
dbGetQuery(con, statement = qSelect)
```

