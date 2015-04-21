pollutantmean <- function(directory, pollutant, id = 1:332) {
    
    files <- dir(directory)
  
    for (i in files[id]) {
        open <- paste(directory, i, sep = "/")
        print(open)
        f.all <- read.csv(open)
        f.sub <- subset(f.all, select = pollutant)
        f.na <- f.sub[!is.na(f.sub)]        
        f.mean <- mean(f.na)
        print(f.mean)
    }   
    
}