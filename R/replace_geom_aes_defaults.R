#' Replace default geom colors
#'
#' @param name Aesthetic for re-color
#' @param old_aes Aesthetic to replace
#' @param new_aes replacement Aesthetic to use
#'
#' @return updated ggplot geom colors
#' @export
#' @examples
#' replace_geom_aes_defaults("colour", "black", "#6C6D6C")

replace_geom_aes_defaults <- function(name, old_aes, new_aes) {
  matching_geoms <-
    purrr::map(geom_aes_defaults(), name) %>%
      purrr::compact() %>%
      purrr::keep(~ !is.na(.) & . == old_aes)
  geoms <- gsub("^Geom(.*)", "\\1", names(matching_geoms))
  purrr::walk(geoms, update_geom_defaults, stats::setNames(list(new_aes), name))
}

replace_geom_aes_defaults("colour", "black", "#6C6D6C")
replace_geom_aes_defaults("size", 0.5, 0.7)
