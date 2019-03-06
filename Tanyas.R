library(ggplot2)
library(dplyr)
df.summary<-rdData %>%
 group_by(genotype,age,location) %>%
summarise(m=mean(nucleiCount))
ggplot(df.summary,aes(x=location,y=m,color=genotype,fill=age))+geom_point()+geom_line()
