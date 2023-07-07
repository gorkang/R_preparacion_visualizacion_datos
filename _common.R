# install.packages("formatR")

set.seed(2023)

library(ggplot2); ggplot2::theme_set(ggplot2::theme_minimal(10))

# Chunks options
knitr::opts_chunk$set(
  comment = "#>",
  collapse = TRUE,
  # fig.retina = 2,
  # fig.width = 6,
  # fig.asp = 2/3,
  fig.show = "hold"
  # tidy = TRUE,
  # tidy.opts=list(width.cutoff=60)
)

# Chunk options only for pdf output
if (knitr::is_latex_output()) {
  knitr::opts_chunk$set(
    comment = "#>",
    collapse = TRUE,
    fig.show = "hold"
    # tidy = TRUE,
    # tidy.opts=list(width.cutoff=60)
  )
}



options(
  dplyr.print_min = 6,
  dplyr.print_max = 6,
  pillar.max_footer_lines = 2,
  pillar.min_chars = 15,
  stringr.view_n = 6,
  # Temporarily deactivate cli output for quarto
  cli.num_colors = 0,
  cli.hyperlink = FALSE,
  pillar.bold = TRUE,
  width = 77 # 80 - 3 for #> comment
)
