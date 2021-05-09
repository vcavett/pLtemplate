geom_aes_defaults <- function() {
  geom_names <- utils::apropos("^Geom", ignore.case = FALSE)
  geoms <- mget(geom_names, envir = asNamespace("ggplot2"))
  purrr::map(geoms, ~ .$default_aes)
}
