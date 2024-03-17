library(dplyr)
library(dbplyr)
library(RMariaDB)

connection <- dbConnect(RMariaDB::MariaDB(), 
                        dsn="mysql",
                        Server = "localhost",
                        dbname = "samplecs102", 
                        user = "root", 
                        password = '')
dbListTables(connection)

dbListFields(connection,"info")
dbListFields(connection,"extra_info")

posts_dta <- dbGetQuery(connection, "SELECT * FROM samplecs102.info")
glimpse(posts_dta)

empi_data <- dbGetQuery(connection, "SELECT * FROM samplecs102.info")
glimpse(empi_data)

empi_data[c(1:10),]

empi_data <- dbGetQuery(connection, "SELECT * FROM samplecs102.info")
tail(empi_data)

posts_data <- dbGetQuery(connection, "SELECT title,description FROM samplecs102.info")
posts_data[c(1:2),]

query <- "INSERT INTO info (name, age, bday) VALUES ('ARIANE', 19, '2000-04-05')"
query1 <- "INSERT INTO info (name, age, bday) VALUES ('JOHN', 19, '2000-04-05')"
query2 <- "INSERT INTO info (name, age, bday) VALUES ('BENEDICT', 22, '2000-04-05')"
query3 <- "INSERT INTO info (name, age, bday) VALUES ('GISSELE', 24, '2000-04-05')"
query4 <- "INSERT INTO info (name, age, bday) VALUES ('WINTER', 28, '2000-04-05')"
query_result <- dbSendQuery(connection, query)
dbClearResult(query_result)

dbDisconnect(connection)