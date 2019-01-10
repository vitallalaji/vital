bakery<-read.transactions(file.choose(),format="single",cols=c(3,4),sep=",")
inspect(bakery[1:10]) # downloaded the data from kaggale
class(bakery)
windows()
itemFrequencyPlot(bakery,topN=25,type="absolute",col="wheat2",xlab="itemName",ylab="frequency")
library(arules)
library(arulesViz)
itemFrequencyPlot(bakery,topN=25,type="relative",col="wheat2",xlab="itemname",ylab="frequency")

bakery_rules<-apriori(bakery,parameter=list(support=0.002,confidence=0.2,minlen=2))
bakery_rules
plot(bakery_rules)
head(quality(bakery_rules))
plot(bakery_rules,method="grouped")
inspectDT(bakery_rules)
inspect(bakery_rules)
