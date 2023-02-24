f1 <- read.csv("C:/Users/user/Desktop/University/MOST Grant/Data/f1s.csv", header = T)
#View(f1)
results1<-aov(values ~ subjects, data = f1)
#View(results1)
tukey1<-TukeyHSD(results1)
p_adj<-tukey1$subjects
#View(p_adj)
posthoc1<-p_adj[,4][p_adj[,4]<0.05]
allPH1<-p_adj
