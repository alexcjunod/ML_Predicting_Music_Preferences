##########################################################
## The following uses renv to help with reproducibility ##
##########################################################




# load the required packages
packages <- c(
  "here", # for the project's organization
  "tidyverse", "lubridate", # for wrangling
  "patchwork", "maps", "scales", # for plotting
  "knitr", "kableExtra", "rmarkdown", # for the report
  "reticulate",
  "pROC",
  "caret", # for the modelling part
  "tidyr",
  "ggplot2", 
  "gridExtra", 
  "patchwork",
  "FactoMineR",
  "factoextra",
  "gridExtra",
  "corrplot", 
  "ISLR",
  "rpart",
  "rpart.plot",
  "dplyr", 
  "e1071",
  "randomForest",
  "gt",
  "kernlab", 
  "adabag",
  "DT",
  "reshape2", 
  "tidyverse",
  "cluster",
  "reshape2",
  "pROC", 
  "glmnet", 
  "DALEX", 
  "pdp",
  "plotly", 
  "gtsummary",
  "gridExtra",
  "ggcorrplot",
  "broom",
  "purrr"
  
)

# Install missing packages and load all the required libraries
purrr::walk(packages, function(pkg) {
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg)
    library(pkg, character.only = TRUE)
  }
})



# Uncomment the codes in this section if you would like to use it with your
 #Check if renv is installed and load it
 if (!require("renv", character.only = TRUE)) {
   install.packages("renv")
   library("renv", character.only = TRUE)
 }

# Initialize renv and restore packages from the lockfile
# renv::init()
 #renv::restore()

#############################################
## The following loads the needed packages ##
#############################################

# load your virtual environment for the project
 
 # assign the right virtual environment for the exercises
 env_name <- "spotify"
 
 # if the virtual enviroment does not already exist, only then create then
 if (!env_name %in% reticulate::conda_list()$name) {
   reticulate::conda_create(env_name, pip = TRUE) # we use pip for installations
 }
 # make sure we're using the right environment
 reticulate::use_condaenv(env_name)
 
 # if you preferred, you can also use your own version of python with `use_python()`
 # you can see all the versions of your path here and which one has been assigned
 reticulate::py_config()
 
 # Check if python is setup properly now
 reticulate::py_available()
 
# py_install(c("spotipy", "pandas"), envname = "spotify")
 
########################################
## The following sets the python path ##
########################################
# reticulate::use_condaenv("NAME_OF_YOUR_ENVIRONMENT")

######################################################
## The following sets a few option for nice reports ##
######################################################
# You can use this if you wanted to change the rendered output

# general options
options(
  digits = 3,
  str = strOptions(strict.width = "cut"),
  width = 69,
  tibble.width = 69,
  cli.unicode = FALSE
)

# ggplot options
theme_set(theme_light())

# knitr options
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  # cache = TRUE,
  fig.retina = 0.8, # figures are either vectors or 300 dpi diagrams
  dpi = 300,
  out.width = "100%", # Graphs take the full width of the content area
  fig.align = "center",
  # Optional: Adjust these if needed
  # fig.width = 6,
  # fig.asp = 0.618,
  fig.show = "hold",
  message = FALSE,
  echo = TRUE
)
