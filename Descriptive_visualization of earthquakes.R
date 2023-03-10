earthquakes<-datasets::quakes
 
head(earthquakes,10)
tail(earthquakes,10)

earthquakes[,c(1,2)]

df<-earthquakes[,-4]

summary(earthquakes$mag)
summary(earthquakes)

plot(earthquakes$lat)
# ponts and lines 
plot(earthquakes$lat,earthquakes$long,type="p")
plot(earthquakes)
plot(earthquakes$mag,type="l")
plot(earthquakes$long,type="b")
plot(earthquakes$lat,xlab='latitude concenteration',ylab='No of instances',main='earthquakes in india',col='red')

#Histogram 
hist(earthquakes$depth)
hist(earthquakes$lat)
hist(earthquakes$long)
hist(earthquakes$lat,
     main='latitude of earthquakes',
     xlab='latitude values', col='blue')

#single bar plot
boxplot(earthquakes$stations,main="Boxplot")
boxplot(earthquakes$stations)$out
boxplot(earthquakes[,1:5],main='Multiple')

#margin of the grid(mar)
#no of rows and colums(mfrow)
#whether a broder is to be included(bty)
#and positions of the 
#bty - box around the plot
par(mfrow=c(3,3),mar=c(2,5,2,1), las=0, bty='o')

plot(earthquakes$lat)
plot(earthquakes$lat,earthquakes$long)
plot(earthquakes$lat, type="l")
plot(earthquakes$long, type="l")
barplot(earthquakes$long, main= 'latitude concenteration in earthquake',
        xlab= 'latitude levels',col= 'green',horiz= TRUE)
hist(earthquakes$lat)
boxplot(earthquakes$lat)
boxplot(earthquakes[,0:5],main= 'multiple Box plots')
