pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    files <- dir(directory)
    f <- data.frame()
  
    for (i in files[id]) {
        open <- paste(directory, i, sep = "/")
        f <- rbind(f, read.csv(open))
        f_subset <- f[, pollutant]
        f_mean <- mean(f_subset, na.rm = TRUE)
    }
    print(round(f_mean, digits = 3))
}