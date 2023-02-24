f3 <- read.csv("C:/Users/user/Desktop/University/MOST Grant/Data/F3s.csv", header = T)
#View(f3)
results3<-aov(values ~ subjects, data = f3)
#View(results3)
tukey3<-TukeyHSD(results3)
p_adj<-tukey3$subjects
posthoc3<-p_adj[,4][p_adj[,4]<0.05]
#View(posthoc3)
allPH3<-p_adj
padj3<-p_adj[,4]