
# List Files
setwd('/home/sergen/Desktop/FF/RTutorial/23-ChangeDataType')
list.files()

data <- read.csv('singapore-airbnb.csv' , header = T , sep=",")
View(data)
names(data)

mode(data$host_name)
mode(data$id)
