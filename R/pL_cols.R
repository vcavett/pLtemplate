# Note that most of this code will be based on code published https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2

#' Function to extract pL colors as hex codes
#'
#' @param ... Character names of pL_cols
#'

pL_cols <- function(...) {
  cols <- c(...)
  if (is.null(cols))
    return (pL_colors)
  pL_colors[cols]
}

pL_palettes <- list(
  `main`  = pL_cols("dark grey", "blue", "orange"),
  `cool`  = pL_cols("blue", "green"),
  `hot`   = pL_cols("yellow", "orange", "red"),
  `mixed` = pL_cols("blue", "green", "yellow", "orange", "red"),
  `grey`  = pL_cols("light grey", "dark grey"),
  `all`   = pL_cols("dark grey", "blue", "orange", "green", "yellow", "red", "light grey")
)

