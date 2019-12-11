# Data Frame üzerinde bulunan değişkenin 
# grup değişkenine göre ortalamasının alınması
# ------------------------------------------------------

# Veri setine ulaşabileceğiniz link
# https://www.kaggle.com/ronitf/heart-disease-uci/download


list.files()
df <- read.csv('heart.csv' , header = T , sep=",")

#Data Frame'i görüntüle
View(df)  

#Değişken isimlerini görüntüle
names(df)

# Grouplara göre tek değişkenin ortalamasının alınması
# --------------------------------------------------------------------------
aggregate( df$chol , by = list(Group=df['sex'])  , FUN=sum) # Hatalı

df['sex'] # Satır indexleri ile birlikte alır
df[['sex']] # Değişkine tek bir dizi olarak alır array veya vektör

aggregate( df$chol , by = list(Group=df[['sex']]) , FUN=sum) # Doğru
aggregate( df$chol , by = list(Group=df$sex) , FUN=sum) # Doğru

# Grouplara göre birden fazla değişkenin ortalamasının alınması
# --------------------------------------------------------------------------

aggregate(df[c('trestbps','chol')], by=list(Group=df[['sex']]), FUN=sum)
aggregate(df[c('trestbps','chol' , 'ca')], by=list(Group=df[['sex']]), FUN=sum)



