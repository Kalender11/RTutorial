# Data Frame üzerinde bulunan değişkenin 
# grup değişkenine göre istatistiklerinin elde edilmesi
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
aggregate( df$chol , by = list(Group=df[['sex']])  , FUN=mean) # Hatalı


# Grouplara göre birden fazla değişkenin ortalamasının alınması
# --------------------------------------------------------------------------

aggregate(df[c('trestbps','chol')], by=list(Group=df[['sex']]), FUN=mean)
aggregate(df[c('trestbps','chol' , 'ca')], by=list(Group=df[['sex']]), FUN=mean)


# Gruplara göre diğer istatistiksel hesaplamaların yapılması
# ---------------------------------------------------------------------------


# Standart sapma
aggregate(df[c('trestbps','chol')], by=list(Group=df[['sex']]), FUN=sd)

# Minimum Değer
aggregate(df[c('trestbps','chol')], by=list(Group=df[['sex']]), FUN=min)

# Maximum Değer
aggregate(df[c('trestbps','chol')], by=list(Group=df[['sex']]), FUN=max)

# Median Değeri
aggregate(df[c('trestbps','chol')], by=list(Group=df[['sex']]), FUN=median)

# Çeyrekliklerin hesabı
aggregate(df[c('trestbps','chol')], by=list(Group=df[['sex']]), FUN=quantile)







