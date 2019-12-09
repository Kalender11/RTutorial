

# Degiskenler isimlerinin degistirrerek. 

df1 <- read.csv('df1.csv' , header = T , sep=",")
df2 <- read.csv('df2.csv' , header = T , sep=",")

View(df1)
View(df2)



names(df1)[1] <-'RefID'  
names(df2)[1] <- 'RefID'

names(df1)
names(df2)
merge(df1, df2 , by='RefID')


# Degisken isimlerinin degistirmeden 


df1 <- read.csv('df1.csv' , header = T , sep=",")
df2 <- read.csv('df2.csv' , header = T , sep=",")



names(df1)
names(df2)

df_merged = merge(df1 , df2 , by.x = 'ID' , by.y = 'CostomerID')


View(df_merged)
