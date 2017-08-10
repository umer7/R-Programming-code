#install.packages("rio")
install_formats()
library("rio")

x <- import("mcovie.csv")
all.equal(x, check.attributes = FALSE)
head(import("mtcars_noext", format = "csv"))
str(import_list(dir()), 1)
