# Data Frame üzerinde bulunan değişkenin 
# grup değişkenine göre ortalamasının alınması
# ------------------------------------------------------

# Veri setine ulaşabileceğiniz link
# https://www.kaggle.com/ronitf/heart-disease-uci/download

list.files()

aggregate(x$Frequency, by=list(Category=x$Category), FUN=sum)
