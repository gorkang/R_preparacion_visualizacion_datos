# Packages


if (!require('rlang')) install.packages('rlang'); library('rlang')
rlang::check_installed(
  pkg = c("afex", "correlation", "corrr", "cowplot", "dplyr", "DT", "esquisse",
          "gapminder", "geomtextpath", "ggplot2", "ggraph", "ggridges", "ggthemes",
          "googlesheets4", "gtsummary", "haven", "here", "hexbin", "inspectdf",
          "janitor", "knitr", "lme4", "papaja", "parameters", "performance", "plotly",
          "purrr", "readODS", "readr", "readxl", "remotes", "renv", "report",
          "rticles", "see", "sjPlot", "stargazer", "tidyr", "usethis", "writexl"),
  reason = "to run the initial setup")

if (!require('regexplain')) remotes::install_github("gadenbuie/regexplain"); library('regexplain')
if (!require('raincloudplots')) remotes::install_github('jorvlan/raincloudplots'); library('raincloudplots')


# Environment preparation


# Colored chunks
  # https://stackoverflow.com/questions/41030477/changing-chunk-background-color-in-rmarkdown/41031276



# RMD Tricks:
  # https://holtzy.github.io/Pimp-my-rmd/


# Para ejercicios?
## devtools::install_github("koncina/unilur")




# # Sistema 1 colorear chunks
# <style>
#   div.blue { background-color:#e6f0ff; border-radius: 5px; padding: 20px;}
# </style>
# <div class = "blue">
#
#   - This is my first conclusion
# - This is my second conclusion
#
# </div>
#
#
#
# ```{css}
# .badCode {
#   background-color: #e6f0ff;
#     color: #3a87ad;
#     background-color: #d9edf7;
#     border-color: #bce8f1;
# }
# ```
#
# ```{r mtcars, class.source = "emphasized"}
# summary(mtcars)
# ```
#
# ```{r cars, class.source="badCode"}
# summary(cars)
# ```
#
# <span class="emphasized">Pay attention to this!</span>
#   And compare it to this!
#
#   ## Next Steps {#nextsteps .emphasized}
#
