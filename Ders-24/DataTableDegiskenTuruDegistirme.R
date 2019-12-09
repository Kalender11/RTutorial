
# List Files
list.files()

data <- read.csv('singapore-airbnb.csv' , header = T , sep=",")
View(data)
names(data)

class(data$id)
class(data$name)


# Karakter olarak dönüşüm 
data$name <- as.character(data$name)
class(data$name)


# Numeric dönüşüm
data$id <- as.numeric(data$id)
class(data$id)


## Numeric ve İnteger veri türleri

class(data$latitude)
class(data$longitude)
class(data$price)


## Diğer veri türü değiştirme fonksiyonları

#as.logical()
#as.numeric()
#as.integer()
#as.chracter()
#as.factor()


