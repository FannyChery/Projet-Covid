library(data.table)
library(dplyr)
library(tidyr)
df <-read.csv("covidALL.csv", sep= ";", header= T)
data.table(df)
distinct(df,df$nom,.keep_all = T)

dfrance <-df[df$nom=="france",]

#suppression des NA'S data france


write.csv(dfrance %>% drop_na(),"datafrance.csv")
