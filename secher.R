secher<-read.table("secher.txt",header=T)
model1<-lm(bwt~bpd, data=secher)
sum.model1<-summary(model1)
R2<-sum.model1$r.squared
f1<-sum.model1$fstatistic 
p.value<-pf(f[1],f[2],f[3],lower.tail=F)
output1<-sprintf("R2 = %f and p-value=%f", R2, p.value)
cat(output1)
intercept<-model1$coefficients[1]
slope<-model1$coefficients[2] 
output1<-sprintf("slope=%f1  intercept=%f1",slope, intercept)
cat(output1)
png("graph1.png")
plot(bwt~bpd, data=secher)
abline(model1)
dev.off()
model2<-lm(bwt~ad, data=secher)
sum.model2<-summary(model2)
r2<-sum.model2$r.squared
f2<-sum.model2$fstatistic 
p.value2<-pf(f[1],f[2],f[3],lower.tail=F)
output2<-sprintf("R2_2 = %f and p-value_2=%f", r2, p.value2)
cat(output2)
intercept2<-model2$coefficients[1]
slope2<-model2$coefficients[2] 
output2<-sprintf("slope_2=%f2  intercept_2=%f2",slope2, intercept2)
cat(output2)
png("graph2.png")
plot(bwt~ad, data=secher)
abline(model2)
dev.off()
model3<-lm(bwt~bpd+ad, data=secher)
sum.model3<-summary(model3)
R22<-sum.model3$r.squared
f3<-sum.model3$fstatistic
p.value3<-pf(f[1],f[2],f[3],lower.tail=F)
output3<-sprintf(" bwt~bpd+ad R2 = %f and p-value=%e", R22, p.value3,'\n')
cat(output3,'\n')