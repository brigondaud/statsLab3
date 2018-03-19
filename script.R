library("class")
library("MASS")

NAm2 = read.table("NAm2.txt", header=TRUE)

cont <- function(x)
{
  if (x %in% c("Canada"))
      cont<-"NorthAmerica"
  else if (x %in% c("Guatemala","Mexico","Panama","CostaRica"))
      cont<-"CentralAmerica"
  else
      cont<-"SouthAmerica"
  return (factor(cont))
}
contID<-sapply(as.character(NAm2[,4]),FUN=cont)
