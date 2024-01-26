
# Packages and libraries needed to run scripts
# setup.R is sourced from the scripts where needed


local({
  
  # Function to check and install a package if not present
  check_and_install <- function(package_name) {
    if (!requireNamespace(package_name, quietly = TRUE)) {
      install.packages(package_name)
    }
    library(package_name, character.only = TRUE)
  }
  
  # List of required packages
  packages <- c(
    "cowplot",
    "dplyr",
    "feasts",
    "fable",
    "forecast",
    "ggplot2",
    "grid",
    "gridExtra",
    "knitr",
    "lubridate",
    "readxl",
    "stats",
    "tidyverse",
    "tsibble",
    "tseries",
    "TTR",
    "writexl",
    "zoo"
  )
  
  # Check and install (if necessary) each package
  lapply(packages, check_and_install)
  
})


