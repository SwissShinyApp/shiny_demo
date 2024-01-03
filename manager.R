
# install.packages("pak")
# pak::pak("posit-dev/r-shinylive")
# pak::pak("rstudio/httpuv")

# packageVersion("shinylive")
# packageVersion("httpuv")
# 
# # Copy "Hello World" from `{shiny}`
# system.file("examples", "01_hello", package="shiny") |>
#   fs::dir_copy("myapp", overwrite = TRUE)
# 

shinylive::export(appdir = "myapp", destdir = "docs")

httpuv::runStaticServer("docs/")
