
# List Files
list.files()

data <- read.csv('singapore-airbnb.csv' , header = T , sep=",")
View(data)
names(data)


data[c('price' , 'minimum_nights')]


# Satırlar bazında ortalama işlemi
rowMeans(data[c('price' , 'minimum_nights')])


# Ortalama vektorünün data frame eklenmesi
data['ortalama'] <- rowMeans(data[c('price' , 'minimum_nights')])

