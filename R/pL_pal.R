#' Return function to interpolate a pL color palette
#'
#' @param palette Character name of palette in pL_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @export
pL_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- pL_palettes[[palette]]
  if (reverse) pal <- rev(pal)
  grDevices::colorRampPalette(pal, ...)
}
