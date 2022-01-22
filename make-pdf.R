pkg <- c("tinytex",
         "rmarkdown")
for (i in 1:length(pkg)) {
  tmp <- require(pkg[i], character.only = TRUE)
  if (!tmp) install.packages(pkg[i])
  library(pkg[i], character.only = TRUE)
}
if(!tinytex::is_tinytex()) tinytex::install_tinytex()

rmarkdown::render("nhcv.Rmd")
