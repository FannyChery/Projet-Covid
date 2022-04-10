library(data.table)
library(BenfordTests)
#library(devtools)
#install_github("st-homme/benfordSmoothTest")
df <- read.csv("datafrance.csv")
data.table(df)
#____________________________ test analyses données france ______________________
#Cleaning pour n'avoir que les chiffres pour l'analyse de benford
dfdonn <- df[,c("cas", "deces", "guerisons")]

x <- c(df$cas,df$deces,df$guerisons)

chisq.benftest(x)
edist.benftest(x)
jointdigit.benftest(x)
jpsq.benftest(x)
ks.benftest(x)
mdist.benftest(x)
meandigit.benftest(x)
signifd(x) #donne les chiffres significatifs
signifd.analysis(x, freq= T ) #graphe analyse chiffres significatifs
simulateH0()# simule quelque chose qui suit une loi de benford
usq.benftest(x)

#_________________________ fin des tests sur la france ____________________________
