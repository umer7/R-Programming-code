library("rio")

export(mtcars, "mtcars.csv")

# create file to convert
export(movie, "movie.csv")

# convert Stata to arff
convert("movie.csv", "movie.arff")
