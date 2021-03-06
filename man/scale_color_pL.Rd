% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scale_color_pL.R
\name{scale_color_pL}
\alias{scale_color_pL}
\title{Color scale constructor for pL colors}
\usage{
scale_color_pL(palette = "main", discrete = TRUE, reverse = FALSE, ...)
}
\arguments{
\item{palette}{Character name of palette in pL_palettes}

\item{discrete}{Boolean indicating whether color aesthetic is discrete or not}

\item{reverse}{Boolean indicating whether the palette should be reversed}

\item{...}{Additional arguments passed to discrete_scale() or
scale_color_gradientn(), used respectively when discrete is TRUE or FALSE}
}
\description{
Color scale constructor for pL colors
}
\details{
palette pL color palettes include "main", "cool", "hot", "mixed", "grey" and "all"
}
\examples{
data <- tibble::tibble(x = 0:100,
						 y = sample(1:1000, 101, replace=TRUE),
						 z = sample(LETTERS[1:3], 101, replace = TRUE),
						 a = sin(x))
data \%>\% ggplot2::ggplot() +
aes(x, y,
		col = z) +
geom_point(size= 3) +
xlab("axis_label") +
labs(title = "This is the main title",
		 subtitle = "with subtitle",
		 caption = "This is a random scatter plot prepared for theme demonstration.") +
 theme_pL() +
scale_color_pL()
}
