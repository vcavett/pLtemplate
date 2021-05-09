#' Color scale constructor for drsimonj colors
#'
#' @param palette Character name of palette in pL_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is TRUE or FALSE
#' @details palette pL color palettes include "main", "cool", "hot", "mixed", "grey" and "all"
#' @export
#' @examples data <- tibble(x = 0:100,
#'							 y = sample(1:1000, 101, replace=TRUE),
#'							 z = sample(LETTERS[1:3], 101, replace = TRUE),
#'							 a = sin(x))
#' data %>% ggplot() +
#'	aes(x, y,
#'			col = z) +
#'	geom_point(size= 3) +
#'	xlab("axis_label") +
#'	labs(title = "This is the main title",
#'			 subtitle = "with subtitle",
#'			 caption = "This is a random scatter plot prepared for theme demonstration.") +
#'  theme_pL() +
#'	scale_color_pL()

scale_color_pL <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- pL_pal(palette = palette, reverse = reverse)

  if (discrete) {
    discrete_scale("colour", paste0("pL_", palette), palette = pal, ...)
  }
  else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
