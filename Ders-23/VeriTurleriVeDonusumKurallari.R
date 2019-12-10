

# Tanimlanmis vektorler 

numerical <- c(1.3 , 4.5 , 5.6 , 7.5)
integer <- c(1,2,3,4,5,6)
categorical <- c('Ahmet' , 'Ayse' , 'Veli')
factorial <- c('Katiliyorum' , 'Katilmiyorum' , 'Kararsizim')
logical <- c(TRUE , FALSE , FALSE , TRUE)


# Veri Türleri Kontrolü 

class(numerical)
class(integer)
class(categorical)
class(factorial)
class(logical)


# Dönsümler 

# Integer dönüsümü
integer <- as.integer(integer)
class(integer)

# Integer Numeric Dönüsümü 

integer <- as.numeric(integer)
class(integer)


# Caegorilca Character degiskeni 

class(categorical)


# Factor degiskeni dönüsümö

class(factorial)
factorial <- as.factor(factorial)
class(factorial)
factorial

# Dogrudan Factor Degiskeni Olusturma 

factor_var <- factor(c('A' , 'B' , 'C' , 'D'))
class(factor_var)
factor_var


## Özel Döünüsümler 

var1 <- c('1' , '2' , '3')
class(var1)

var1 <- as.numeric(var1)
class(var1)



var2 <- c('A' , 'B' , 'C' , 'D')
class(var2)
var2 <- as.numeric(var2)
var2

var3 <- factor(c('A' , 'B' , 'C' , 'G'))
var3 <- as.numeric(var3) 
var3

var4 <- factor(c('2' , '4' , '9'))
class(var4)

# Factörden numerige Yanlis Dönüsüm
var4 <- as.numeric(var4)
var4

# Dogru Dönüsüm
var4 <- factor(c('2' , '4' , '9'))
class(var4)

var4 <- as.character(var4)
class(var4)
var4 <- as.numeric(var4)
var4
class(var4)


