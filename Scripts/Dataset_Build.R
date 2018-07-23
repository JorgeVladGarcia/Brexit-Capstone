# EU Membership and FDI Inflows
setwd("C:\\Users\\Vladimir\\Desktop\\DATA brexit")
library(reshape2)
GDP<- read.csv("DATA_FINAL.csv")

# read information on all countries, convert factors to numerics, convert dummies to factors 

uk<- read.csv("uk.csv")
uk[,3:14]<- lapply(uk[,3:14], as.numeric) #convert from factor format to numeric
uk[,15:16]<- lapply(uk[,15:16], as.factor) #convert dummies to factor format
uk<- melt(uk, id=c("ï..Target", "Sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
colnames(uk)[1:2]<- c("target","sender")

australia<- read.csv("australia.csv")
australia[,3:14]<- lapply(australia[,3:14], as.numeric) #convert from factor format to numeric
australia[,15:16]<- lapply(australia[,15:16], as.factor) #convert dummies to factor format
australia<- melt(australia, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
colnames(australia)[1]<- c("target")
colnames(australia)

austria<- read.csv("austria.csv")
head(austria)
austria[,3:14]<- lapply(austria[,3:14], as.numeric) #convert from factor format to numeric
austria[,15:16]<- lapply(austria[,15:16], as.factor) #convert dummies to factor format
austria<- melt(austria, id=c("ï..sender", "Region...economy", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
colnames(austria)[1:2]<- c("target", "sender")
colnames(austria)

belgium<- read.csv("belgium.csv")
belgium[,3:14]<- lapply(belgium[,3:14], as.numeric) #convert from factor format to numeric
belgium[,15:16]<- lapply(belgium[,15:16], as.factor) #convert dummies to factor format
belgium<- melt(belgium, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
colnames(belgium)[1]<- c("target")
colnames(belgium)

bulgaria<- read.csv("bulgaria.csv")
bulgaria[,3:14]<- lapply(bulgaria[,3:14], as.numeric) #convert from factor format to numeric
bulgaria[,15:16]<- lapply(bulgaria[,15:16], as.factor) #convert dummies to factor format
bulgaria<- melt(bulgaria, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(bulgaria)
colnames(bulgaria)[1]<- c("target")
colnames(bulgaria)

canada<- read.csv("canada.csv")
canada[,3:14]<- lapply(canada[,3:14], as.numeric) #convert from factor format to numeric
canada[,15:16]<- lapply(canada[,15:16], as.factor) #convert dummies to factor format
canada<- melt(canada, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
colnames(canada)[1]<- c("target")
head(canada)


cyprus<- read.csv("cyprus.csv")
cyprus[,3:14]<- lapply(cyprus[,3:14], as.numeric) #convert from factor format to numeric
cyprus[,15:16]<- lapply(cyprus[,15:16], as.factor) #convert dummies to factor format
cyprus<- melt(cyprus, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(cyprus)
colnames(cyprus)[1]<- c("target")

czech.republic<- read.csv("czech republic.csv")
czech.republic[,3:14]<- lapply(czech.republic[,3:14], as.numeric) #convert from factor format to numeric
czech.republic[,15:16]<- lapply(czech.republic[,15:16], as.factor) #convert dummies to factor format
czech.republic<- melt(czech.republic, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(czech.republic)
colnames(czech.republic)[1]<- c("target")

denmark<- read.csv("denmark.csv")
denmark[,3:14]<- lapply(denmark[,3:14], as.numeric) #convert from factor format to numeric
denmark[,15:16]<- lapply(denmark[,15:16], as.factor) #convert dummies to factor format
denmark<- melt(denmark, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(denmark)
colnames(denmark)[1]<- c("target")

finland<- read.csv("finland.csv")
finland[,3:14]<- lapply(finland[,3:14], as.numeric) #convert from factor format to numeric
finland[,15:16]<- lapply(finland[,15:16], as.factor) #convert dummies to factor format
colnames(finland)[1:2]<- c("target", "sender")
finland<- melt(finland, id=c("target", "sender", "eu.target", "eu.sender.1"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(finland)
colnames(finland)[4]<- c("eu.sender")

france<- read.csv("france.csv")
france[,3:14]<- lapply(france[,3:14], as.numeric) #convert from factor format to numeric
france[,15:16]<- lapply(france[,15:16], as.factor) #convert dummies to factor format
france<- melt(france, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(france)
colnames(france)[1]<- c("target")

germany<- read.csv("germany.csv")
germany[,3:14]<- lapply(germany[,3:14], as.numeric) #convert from factor format to numeric
germany[,15:16]<- lapply(germany[,15:16], as.factor) #convert dummies to factor format
germany<- melt(germany, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(germany)
colnames(germany)[1]<- c("target")

greece<- read.csv("greece.csv")
greece[,3:14]<- lapply(greece[,3:14], as.numeric) #convert from factor format to numeric
greece[,15:16]<- lapply(greece[,15:16], as.factor) #convert dummies to factor format
greece<- melt(greece, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(greece)
colnames(greece)[1]<- c("target")

hungary<- read.csv("hungary.csv")
hungary[,3:14]<- lapply(hungary[,3:14], as.numeric) #convert from factor format to numeric
hungary[,15:16]<- lapply(hungary[,15:16], as.factor) #convert dummies to factor format
hungary<- melt(hungary, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(hungary)
colnames(hungary)[1]<- c("target")

iceland<- read.csv("iceland.csv")
iceland[,3:14]<- lapply(iceland[,3:14], as.numeric) #convert from factor format to numeric
iceland[,15:16]<- lapply(iceland[,15:16], as.factor) #convert dummies to factor format
iceland<- melt(iceland, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(iceland)
colnames(iceland)[1]<- c("target")

ireland<- read.csv("ireland.csv")
ireland[,3:14]<- lapply(ireland[,3:14], as.numeric) #convert from factor format to numeric
ireland[,15:16]<- lapply(ireland[,15:16], as.factor) #convert dummies to factor format
ireland<- melt(ireland, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(ireland)
colnames(ireland)[1]<- c("target")

italy<- read.csv("italy.csv")
italy[,3:14]<- lapply(italy[,3:14], as.numeric) #convert from factor format to numeric
italy[,15:16]<- lapply(italy[,15:16], as.factor) #convert dummies to factor format
italy<- melt(italy, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(italy)
colnames(italy)[1]<- c("target")

japan<- read.csv("japan.csv")
japan[,3:14]<- lapply(japan[,3:14], as.numeric) #convert from factor format to numeric
japan[,15:16]<- lapply(japan[,15:16], as.factor) #convert dummies to factor format
japan<- melt(japan, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(japan)
colnames(japan)[1]<- c("target")

luxembourg<- read.csv("luxembourg.csv")
luxembourg[,3:14]<- lapply(luxembourg[,3:14], as.numeric) #convert from factor format to numeric
luxembourg[,15:16]<- lapply(luxembourg[,15:16], as.factor) #convert dummies to factor format
luxembourg<- melt(luxembourg, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(luxembourg)
colnames(luxembourg)[1]<- c("target")

malta<- read.csv("malta.csv")
malta[,3:14]<- lapply(malta[,3:14], as.numeric) #convert from factor format to numeric
malta[,15:16]<- lapply(malta[,15:16], as.factor) #convert dummies to factor format
malta<- melt(malta, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(malta)
colnames(malta)[1]<- c("target")

netherlands<- read.csv("netherlands.csv")
netherlands[,3:14]<- lapply(netherlands[,3:14], as.numeric) #convert from factor format to numeric
netherlands[,15:16]<- lapply(netherlands[,15:16], as.factor) #convert dummies to factor format
netherlands<- melt(netherlands, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
colnames(netherlands)[1]<- c("target")

new.zealand<- read.csv("new zealand.csv")
new.zealand[,3:14]<- lapply(new.zealand[,3:14], as.numeric) #convert from factor format to numeric
new.zealand[,15:16]<- lapply(new.zealand[,15:16], as.factor) #convert dummies to factor format
colnames(new.zealand)[1:2]<- c("target", "sender")
#colnames(finland)[1:2]<- c("target", "sender")
new.zealand<- melt(new.zealand, id=c("target", "sender", "eu.target", "eu.sender.1"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(new.zealand)
colnames(new.zealand)[4]<- c("eu.sender")

norway<- read.csv("norway.csv")
norway[,3:14]<- lapply(norway[,3:14], as.numeric) #convert from factor format to numeric
norway[,15:16]<- lapply(norway[,15:16], as.factor) #convert dummies to factor format
norway<- melt(norway, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(norway)
colnames(norway)[1]<- c("target")

poland<- read.csv("poland.csv")
poland[,3:14]<- lapply(poland[,3:14], as.numeric) #convert from factor format to numeric
poland[,15:16]<- lapply(poland[,15:16], as.factor) #convert dummies to factor format
head(poland)
poland<- melt(poland, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(poland)
colnames(poland)[1]<- c("target")

portugal<- read.csv("portugal.csv")
portugal[,3:14]<- lapply(portugal[,3:14], as.numeric) #convert from factor format to numeric
portugal[,15:16]<- lapply(portugal[,15:16], as.factor) #convert dummies to factor format
portugal<- melt(portugal, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(portugal)
colnames(portugal)[1]<- c("target")

romania<- read.csv("romania.csv")
romania[,3:14]<- lapply(romania[,3:14], as.numeric) #convert from factor format to numeric
romania[,15:16]<- lapply(romania[,15:16], as.factor) #convert dummies to factor format
romania<- melt(romania, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(romania)
colnames(romania)[1]<- c("target")

slovakia<- read.csv("slovakia.csv")
slovakia[,3:14]<- lapply(slovakia[,3:14], as.numeric) #convert from factor format to numeric
slovakia[,15:16]<- lapply(slovakia[,15:16], as.factor) #convert dummies to factor format
slovakia<- melt(slovakia, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(slovakia)
colnames(slovakia)[1]<- c("target")

slovenia<- read.csv("slovenia.csv")
slovenia[,3:14]<- lapply(slovenia[,3:14], as.numeric) #convert from factor format to numeric
slovenia[,15:16]<- lapply(slovenia[,15:16], as.factor) #convert dummies to factor format
slovenia<- melt(slovenia, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(slovenia)
colnames(slovenia)[1]<- c("target")

spain<- read.csv("spain.csv")
spain[,3:14]<- lapply(spain[,3:14], as.numeric) #convert from factor format to numeric
spain[,15:16]<- lapply(spain[,15:16], as.factor) #convert dummies to factor format
spain<- melt(spain, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(spain)
colnames(spain)[1]<- c("target")

sweden<- read.csv("sweden.csv")
sweden[,3:14]<- lapply(sweden[,3:14], as.numeric) #convert from factor format to numeric
sweden[,15:16]<- lapply(sweden[,15:16], as.factor) #convert dummies to factor format
sweden<- melt(sweden, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(sweden)
colnames(sweden)[1]<- c("target")

switzerland<- read.csv("switerland.csv")
switzeland[,3:14]<- lapply(switzerland[,3:14], as.numeric) #convert from factor format to numeric
switzeland[,15:16]<- lapply(switzerland[,15:16], as.factor) #convert dummies to factor format
switzerland<- melt(switzerland, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(switzerland)
colnames(switzerland)[1]<- c("target")

usa<- read.csv("USA.csv")
usa[,3:14]<- lapply(usa[,3:14], as.numeric) #convert from factor format to numeric
usa[,15:16]<- lapply(usa[,15:16], as.factor) #convert dummies to factor format
usa<- melt(usa, id=c("ï..target", "sender", "eu.target", "eu.sender"), variable.name = "year", value.name = "FDI.inflow") # change to long format
head(usa)
colnames(usa)[1]<- c("target")

# Paste data frames one after the other
trial.1 <- rbind(australia, austria, belgium, bulgaria,canada, cyprus, czech.republic, denmark, finland, france, germany, greece, hungary)
trial.2 <- rbind(iceland, ireland, italy, japan, luxembourg)
trial.3 <- rbind(malta, netherlands, new.zealand, norway, poland, portugal, romania, slovakia, slovenia, spain, sweden, switzerland, uk, usa)

FDI.data<- rbind(trial.1, trial.2, trial.3)

#-------------
# Merge data
#---------
# Merge with GDP data
head(FDI.data)
FDI.data$year <- gsub("X", "", as.character(factor(FDI.data$year))) # drop Xs in all years
FDI.data$year<- as.integer(FDI.data$year)

# change names and drop unnecessary columns
colnames(GDP)[1]<- c("country")
GDP[,4:5]<- NULL
GDP[,6:8]<- NULL
head(GDP)
str(GDP)
head(FDI.data)
str(FDI.data)

# get GDP and GDP per capita for Target country
trial1<- merge(FDI.data, GDP, by.x = c("target", "year"), by.y = c("country", "year"))
colnames(trial1)[8:9]<-c("GDP.target", "GDPpc.target") 
head(trial1)

# get GDP and GDP per capita for sender
trial2<- merge(trial1, GDP, by.x = c("sender", "year"), by.y = c("country", "year"))
colnames(trial2)[7]<- c("target.ISO")
colnames(trial2)[10]<- c("sender.ISO")
colnames(trial2)[11:12]<- c("GDP.sender", "GDPpc.sender")
head(trial2)

# reorder
eu.gravity.dataset<- trial2[c("target","target.ISO", "sender","sender.ISO", "year", "FDI.inflow", "eu.target", "eu.sender", "GDP.target", "GDPpc.target", "GDP.sender", "GDPpc.sender")]
eu.gravity.dataset<- eu.gravity.dataset[order(eu.gravity.dataset$target),]
# generate ln FDI
# generate ln GDP
eu.gravity.dataset$ln.GDPtarget<- log(eu.gravity.dataset$GDP.target)
eu.gravity.dataset$ln.GDPpc.target<- log(eu.gravity.dataset$GDPpc.target)
eu.gravity.dataset$ln.GDPsender<- log(eu.gravity.dataset$GDP.sender)
eu.gravity.dataset$ln.GDPpc.sender<- log(eu.gravity.dataset$GDPpc.sender)
head(eu.gravity.dataset)
View(eu.gravity.dataset)
# count how many countries we have
count<- unique(eu.gravity.dataset$target)
count<- as.data.frame(count)
nrow(count)

count2<- unique(eu.gravity.dataset$sender)
count2<- as.data.frame(count2)
nrow(count2)

# save as dta file
library(foreign)
write.dta(eu.gravity.dataset, "C:\\Users\\Vladimir\\Desktop\\DATA brexit\\gravity_data.dta")  

# run econometric model
attach(eu.gravity.dataset)
results<- lm(ln.FDI ~ eu.target + ln.GDPtarget + ln.GDPpc.target + ln.GDPpc.target + ln.GDPpc.target, data = eu.gravity.dataset)

summary(results)

distance<- read.dta("dist_cepii.dta")
View(distance)
# merge data from distnce with eu.gravity.dataset
firsttry<- merge(eu.gravity.dataset, distance, by.x = c("target.ISO", "sender.ISO"), by.y = c("iso_d", "iso_o"))
View(firsttry)
# add variables 
firsttry$ln.FDI<- log(firsttry$FDI.inflow)
firsttry$ln.GDPtarget<- log(firsttry$GDP.target)
firsttry$ln.GDPpc.target<- log(firsttry$GDPpc.target)
firsttry$ln.GDPsender<- log(firsttry$GDP.sender)
firsttry$ln.GDPpc.sender<- log(firsttry$GDPpc.sender)
firsttry$ln.distance<- log(firsttry$dist)
View(firsttry)
results<- summary(firsttry)
results

# save final dataset
write.dta(firsttry,"C:\\Users\\Vladimir\\Desktop\\DATA brexit\\gravitymodel_data.dta" )

# from origin to destination
# so i am doing from destionation to origin

# trial2<- merge(trial1, GDP, by.x = c("sender", "year"), by.y = c("country", "year"))
