corr <- function(directory, threshold = 0) {
  
  files_list <- list.files(directory, full.names=TRUE) 
  dat <- data.frame()
  #final <- vector(mode="integer", length=332)
  final <- numeric()
  
  for (i in 1:332) {
  
    temp_cor <- vector()
    dat <- read.csv(files_list[i])
    dat_na <- dat[complete.cases(dat),]
    nobs <- nrow(dat_na)
    
    if (nobs > threshold) {
      temp_cor <- cor(dat_na[["sulfate"]], dat_na[["nitrate"]])
      final <- c(final, temp_cor)
    }
     
  }
  round(final, digits = 4)
}