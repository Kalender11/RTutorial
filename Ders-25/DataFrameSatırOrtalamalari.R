
# List Files
list.files()

data <- read.csv('singapore-airbnb.csv' , header = T , sep=",")
View(data)
names(data)


data[c('price' , 'minimum_nights')]


# Sat�rlar baz�nda ortalama i�lemi
rowMeans(data[c('price' , 'minimum_nights')])


# Ortalama vektor�n�n data frame eklenmesi
data['ortalama'] <- rowMeans(data[c('price' , 'minimum_nights')])

