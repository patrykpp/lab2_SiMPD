# install.packages("OutrankingTools")
library(OutrankingTools)

# the performance table
performanceMatrix <- rbind(
  c(7.9 , 128 , 2 , 2699),
  c(7.9 , 128 , 2 , 2699),
  c(9.7 , 256 , 2 , 4549),
  c(9.7 , 32 , 2 , 3599),
  c(7.9 , 128 , 2 , 2999),
  c(12.9 , 128 , 4 , 4949),
  c(12.9 , 256 , 4 , 5699),
  c(7.9 , 16 , 2 , 1869),
  c(12.9 , 128 , 4 , 5199),
  c(9.7 , 256 , 2 , 4599)
  
)
alternatives <- c(
  "Apple iPad mini 4 Wi-Fi + Cellular 128GB (złoty)",
  "Apple iPad mini 4 Wi-Fi + Cellular 128GB (srebrny)",
  "Apple iPad Pro 9,7 Wi-Fi + Cellular 256GB (różowe złoto)",
  "Apple iPad Pro 9,7 Wi-Fi + Cellular 32GB (zloty)",
  "Apple iPad mini 4 Wi-Fi + Cellular 128GB (zloty)",
  "Apple iPad Pro 12,9 Wi-Fi + Cellular 128GB (zloty)",
  "Apple iPad Pro 12,9 Wi-Fi + Cellular 256GB (srebrny)",
  "Apple iPad mini 4 Wi-Fi + Cellular 16GB (zloty)", 
  "Apple iPad Pro 12,9 Wi-Fi + Cellular 128GB (szary)",
  "Apple iPad Pro 9,7 Wi-Fi + Cellular 256GB (zloty)")
  

criteria <- c(
  "Wyświetlacz",
  "Pojemność ",
  "Pamięć RAM",
  " Cena ")
# criteria to minimize or maximize
minmaxcriteria <- c("max" , "max" , "max" , "min")
IndifferenceThresholds <- c(25,16,0,12)
PreferenceThresholds <- c(50,24,1,24)
VetoThresholds <- c(100,60,2,48)
criteriaWeights <- c(1,1,1,1)

fileConn<-file("output.txt")
writeLines(c("Hello","World"), fileConn)
close(fileConn)

Electre3_SimpleThresholds(performanceMatrix,
                          alternatives,
                          criteria,
                          minmaxcriteria,
                          criteriaWeights,
                          IndifferenceThresholds,
                          PreferenceThresholds,
                          VetoThresholds)
