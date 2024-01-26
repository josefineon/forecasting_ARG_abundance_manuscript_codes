# forecasting_ARG_abundance_manuscript_codes

Welcome to the repository for the time series analysis used in the manuscript ***Forecasting Antimicrobial Resistance Gene Abundance in the Danish Pig Production through Time Series Analysis of Antimicrobial Usage and Resistance Data***. This project contains the R code and data required to replicate the analysis presented in the manuscript.

Antimicrobial resistance (AMR) poses a significant challenge to public health. In an effort to understand and predict the dynamics of antimicrobial resistance gene (ARG) abundance in the Danish pig production, this project applies rigorous time series analysis methods to antimicrobial usage and resistance data. The objective is to forecast ARG abundance and provide insights that could inform policy and practice in antimicrobial stewardship.

The codes within this repository are structured to correspond with the various stages of the analysis as detailed in the manuscript. From pre-processing of the raw data to the application of sophisticated forecasting models, each step are found within the R Markdown scripts to facilitate transparency and reproducibility.

We invite researchers, data scientists, and epidemiologists to explore these scripts, replicate the analysis, and contribute to the research in antimicrobial resistance in food-producing animals.

Please refer to the sections below for detailed instructions on setting up the environment, executing the scripts, and understanding the structure of the data and code.

## File Descriptions

The following files can be found in this repository:

-   `1_preprocessing.Rmd` - R Markdown script for ARG abundance time series data pre-processing (linear interpolation of data gaps and adjustment of systematic error).
-   `2_decomposition_stationarity.Rmd` - R Markdown script for time series decomposition, isolating trend component, differencing, checking for stationarity, and summary statistics.
-   `3_regression_analysis.Rmd` - R Markdown script for computing dynamic regression time series models of ARG abundance with lifetime AMU as a time-lagged predictor.
-   `4_forecasting.Rmd` - R Markdown script for forecasting future ARG abundance using the significant DR models.
-   `data/` - Directory containing all data sets used in the analysis. Each dataset is in .txt format.
-   `manuscript_figures.Rmd` - R Markdown file that generates all figures included in the manuscript and supplementary material.
-   `setup.R` - R script that installs and loads all the necessary packages for the analysis.

## Dependencies

This project relies on various R packages and datasets which are automatically loaded and used by the scripts. Ensure that you have R installed on your system to execute these scripts.

### R Packages

The required R packages are listed in `setup.R`. This script is sourced initially in every script to ensure all necessary packages are installed and libraries loaded. Here is a list for reference:

-   `cowplot`: For creating plots.
-   `dplyr`: For data manipulation within the `tidyverse`.
-   `feasts`: For feature extraction and statistics for time series.
-   `fable`: For modern forecasting using `tidyverse` conventions.
-   `forecast`: For time series forecasting.
-   `ggplot2`: For creating data visualizations.
-   `grid`: For grid graphics.
-   `gridExtra`: For arranging `ggplot2` plots into a grid.
-   `knitr`: For dynamic report generation in R.
-   `lubridate`: For easier manipulation of dates and times.
-   `readxl`: For reading Excel files.
-   `stats`: For basic statistical functions which are part of the R core packages.
-   `tidyverse`: For an easy-to-use collection of R packages for data science.
-   `tsibble`: For tidy time series data.
-   `tseries`: For time series analysis.
-   `TTR`: For smoothing time series data.
-   `writexl`: For writing data to Excel files.
-   `zoo`: For regular and irregular time series analysis.

### Data files

The data required for the analysis is located within the `data/` directory of the project. Each script is configured to load the necessary data files from this directory. Ensure that the `data/` directory is present in the project root before executing the scripts.

-   `ARG_abundance.txt`
    -   Contains the ARG abundance data.
-   `lifetime_AMU.txt`
    -   Contains the lifetime AMU data.
-   `ARG_abundance_int.txt`
    -   Contains the ARG abundance time series, after interpolation of data gaps (output from script: `1_preprocessing.Rmd`).
-   `ARG_abundance_adj.txt`
    -   Contains the ARG abundance time series, after adjusting systematic error (output from script: `1_preprocessing.Rmd`).
-   `ARG_abundance_trend.txt`
    -   Contains the ARG abundance time series trends, after decomposition (output from script: `2_decomposition_stationarity.Rmd`).\
-   `ARG_abundance_trend_diff.txt`
    -   Contains the differenced ARG abundance time series trends, after differencing (output from script: `2_decomposition_stationarity.Rmd`).
-   `lifetime_AMU_trend.txt`
    -   Contains the lifetime AMU time series trends, after decomposition (output from script: `2_decomposition_stationarity.Rmd`).
-   `lifetime_AMU_trend_diff.txt`
    -   Contains the differenced lifetime AMU time series trends, after differencing (output from script: `2_decomposition_stationarity.Rmd`).

Each file's data are essential to the subsequent analysis steps outlined in the R Markdown scripts. The scripts reference these files directly, ensuring a seamless flow from raw data to processed outputs.

## Usage and Attribution

The data and code provided in this project are for academic and non-commercial use only. Any results, findings, or outputs generated using the data, code, or methodologies contained within this project should be properly attributed and, if used in academic contexts, cited in accordance with academic standards.

Please note that while the code and data are provided here for reproducibility and academic purposes, the intellectual property rights of the results and findings they produce belong to the authors of the ***Forecasting Antimicrobial Resistance Gene Abundance in the Danish Pig Production through Time Series Analysis of Antimicrobial Usage and Resistance Data*** unless otherwise specified.

If you wish to use any of the project's contents for purposes beyond those outlined above, including commercial use or in a manner associated with the publication of your own findings or results, please contact the authors for permission.
