
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
    "astsa",
    "car",
    "corrplot",
    "cowplot",
    "data.table",
    "dplyr",
    "fpp3",
    "forecast",
    "GGally",
    "ggplot2",
    "ggrepel",
    "grid",
    "gridExtra",
    "knitr",
    "lmtest",
    "lubridate",
    "patchwork",
    "pheatmap",
    "psych",
    "purrr",
    "readxl",
    "RColorBrewer",
    "stats",
    "stringr",
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


