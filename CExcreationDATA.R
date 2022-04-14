library(data.table)
library(dplyr)
library(tidyr)
library(BenfordTests)
df <-read.csv("covidALL.csv", sep= ";", header= T)
data.table(df)
distinct(df,df$nom,.keep_all = T)

dfrance <-df[df$nom=="france",]

#suppression des NA'S data france


write.csv(dfrance %>% drop_na(),"datafrance.csv")

# exemple sélection taîwan
df <-read.csv("corona_comp.csv", sep= ";", header= T)
data.table(df)
distinct(df,df$Pays,.keep_all = T)
dchine <- df[df$Pays=="Taïwan",]
x <- c(dchine$Infections,dchine$deces,dchine$Guerisons)

# affichage des deux premiers chiffres significatifs
signifd(x , digits=2)
# on a plus qu'a virer si on veut les valeurs en 0 qui ne sont pas prises en compte.
