corr<-function(directory,threshold=0){
  source("complete.r")
  nobss<-complete("specdata")
  #nobss<-na.omit(nobss)
  nobssd<-nobss[nobss$nobs>threshold,]
  correlations<-integer(length = 1)
  for(i in nobssd$id)
  {
    i<-formatC(i,width = 3, format="d",flag="0")
    dirr<-paste(directory,i,sep ="/")
    dirr<-paste(dirr,"csv",sep=".")
    
    a<-read.csv(dirr)
    b<-a[,c('sulfate','nitrate')]
    b<-na.omit(b)
    corr<-cor(b[,c('sulfate')],b[,c('nitrate')])
    correlations<-c(correlations,corr)
  }
  correlations
}