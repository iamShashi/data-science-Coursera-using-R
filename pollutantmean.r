pollutantmean<-function(directory,pollutant,id=1:332){
  e<-0
  colb<-integer(length(1))
  for( i in id){
    i<-formatC(i,width = 3, format="d",flag="0")
    dirr<-paste(directory,i,sep ="/")
    dirr<-paste(dirr,"csv",sep=".")
    
    a<-read.csv(dirr)
    b<-a[pollutant]
    b<-as.numeric(unlist(b))
    colb<-c(colb,b)
    }
      
  d<-mean(colb,na.rm = TRUE)
  return(d)
}