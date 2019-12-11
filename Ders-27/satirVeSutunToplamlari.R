
# Data Frame Satır ve Sütün Toplamlarının alınması
#---------------------------------------------------------------------

list.files() 
# Eğer herhangi bir veri dosyası görünmüyorsa lütfen çalışma dizininizi kontrol ediniz.
# setwd() fonksiyonunu kullanrak çalışma dizinini veri setinizin bulunduğu dizin ile değiştirebilirsiniz.


# Singapore-airbnb veri seti dosyasının R'a Aktarım işlemi
df <- read.csv('singapore-airbnb.csv' , header=T , sep=",")

View(df)
names(df)

# Seçilen değişkenlerin sütünlar bazında toplamlarnın alınması
colSums(df[c('price' , 'number_of_reviews' , 'availability_365')])

#Seçilen değişkenlerin satırlar bazında toplamlarının alınması
rowSums(df[c('price' , 'number_of_reviews' , 'availability_365')])

# Satırlar bazındaki toplamların data frame'e sütün olarak eklenmesi
df['satirToplamlari'] <- rowSums(df[c('price' , 'number_of_reviews' , 'availability_365')]) 

head(df)

View(df)

