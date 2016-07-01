complete<-function(directory,id=1:332){
  id1<-integer(length(1))
  nobs<-integer(length(1))
  for(i in id){
    i<-formatC(i,width = 3, format="d",flag="0")
    dirr<-paste(directory,i,sep ="/")
    dirr<-paste(dirr,"csv",sep=".")
    
    a<-read.csv(dirr)
    a<-a["sulfate"]
   
    b<-as.numeric(unlist(a))
    
    b<-na.omit(b)
    nos<-length(b)
    i<-as.numeric(i)
    id1<-c(id1,i)
    nobs<-c(nobs,nos)
    
  }
  x<-cbind(id1,nobs)
  x<-as.data.frame(x)
  return(x)
}