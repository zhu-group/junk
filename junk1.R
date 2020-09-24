# Define the function FindTop()
FindTop      <- function(N){
  MoviePage  <- readLines('https://movie.douban.com/top250', encoding='UTF-8')
  Pattarn    <- '<span class=\"title\">&nbsp;/&nbsp;([^<]*)</span>'
  Lines      <- grep(Pattarn, MoviePage, value=TRUE)
  Lines      <- sub(Pattarn,  '\\1', Lines )
  Names      <- sub('^ *', '', Lines)
  Names      <- sub('&#39;', "'", Names)
  print(Names[1:N])
}

# Call the function with argument 5 and 10
FindTop(5)
FindTop(25)

x <- seq(1,10,1)
which(x==1 && x==2)

x==1

# Add a new line
plot(X,Y)


