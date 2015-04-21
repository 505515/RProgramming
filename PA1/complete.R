complete <- function(directory, id = 1:332) {
 
  file_list <- list.files(directory, full.names = TRUE)
  df <- data.frame()
  
  for (i in id) {
    
    dat <- vector()
    dat_na <- vector()
    
    dat <- read.csv(file_list[i])
    dat_na <- dat[complete.cases(dat),]
    
    nobs <- nrow(dat_na)
    x <- vector()
    x <- c(i, nobs)
    df <- rbind(df, x)

    
  }
  cnames <- c("id", "nobs")
  colnames(df) <- cnames
  print(df)
  
}