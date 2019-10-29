# "cbind()" ve "rbind()" Fonksiyonları ile İki data Frame'in birleştirilmesi


df1 <- data.frame("Var1" = c("AB" , "BC" , "DB" , "CD"),
                  "Var2" = c("AA" , "BB" , "CC" , "DD"),
                  "Var3" = c(10,1,23,12),
                  "Var4" = c(11,1,34,45))

df2 <- data.frame("Var1" = c("AB" , "BC" , "DB"),
                  "Var2" = c("AA" , "BB" , "CC"),
                  "Var3" = c(10,1,23),
                  "Var4" = c(11,1,34))

## Sütünlar Bazında Ekeleme
# Satır sayıları eşit olmalı
df3 <- cbind(df1 , df2)
class(df3)

names(iris)
df4 <- cbind(iris,iris)


## Satırlar Bazında Ekleme
# Sütün sayısıları eşit ve aynı değişken isimlerinde olmalı.
rbind(df1,df2)
rbind(iris , iris)
