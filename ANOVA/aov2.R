f2 <- read.csv("C:/Users/user/Desktop/University/MOST Grant/Data/F2s.csv", header = T)
#View(f2)
results2<-aov(values ~ subjects, data = f2)
#View(results2)
tukey2<-TukeyHSD(results2)
p_adj<-tukey2$subjects
posthoc2<-p_adj[,4][p_adj[,4]<0.05]
#View(posthoc2)
allPH2<-p_adj
padj<-p_adj[,4]
