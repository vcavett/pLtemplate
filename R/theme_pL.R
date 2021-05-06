#' Paegel lab theme for ggplot2 graphics.
#'
#' Formats ggplot2 graphics in a consistent style for use in notebooks and publications.
#' @return formatted plot
#' @export
#' @import magrittr
#' @import ggplot2
#'
#' @example
#' data <- tibble(x = 0:100, y = sin(x))
#' @example
#' ggplot() + aes(x, y) + geom_line() + theme_pL()

theme_pL <- function(){

    font <- "Helvetica"   #assign font family up front

    ggplot2::theme_bw() #%+replace%    #replace elements we want to change
    ggplot2::theme_replace(

      #grid elements
      panel.grid.major = ggplot2::element_blank(),    #strip major gridlines
      panel.grid.minor = ggplot2::element_blank(),    #strip minor gridlines
      axis.ticks = ggplot2::element_blank(),          #strip axis ticks

      #text elements
      plot.title = ggplot2::element_text(             #title
                   family = font,            #set font family
                   size = 18,                #set font size
                   face = 'bold',            #bold typeface
                   hjust = 0.5,                #left align
                   vjust = 2,
                   margin = ggplot2::margin(t = 5)),               #raise slightly

      plot.subtitle = ggplot2::element_text(          #subtitle
                   family = font,            #font family
                   size = 12,
                   margin = ggplot2::margin(b = 5)),               #font size

      plot.caption = ggplot2::element_text(           #caption
                   family = font,            #font family
                   size = 9,                 #font size
                   hjust = 1),               #right align

      axis.title = ggplot2::element_text(             #axis titles
                   family = font,            #font family
                   size = 12,
                   face = 'bold'),  #font size

      axis.title.y = ggplot2::element_text(margin = ggplot2::margin(10,10,10,10),
      														angle = 90),

      axis.text = ggplot2::element_text(              #axis text
                   family = font,            #axis famuly
                   size = 9,
                   margin = ggplot2::margin(3,3,3,3)),                #font size

      axis.text.x = ggplot2::element_text(            #margin for axis text
                    margin = ggplot2::margin(3,3,3,3)),

      legend.title = ggplot2::element_blank(),

      panel.background = ggplot2::element_rect(size = 2)
      #since the legend often requires manual tweaking
      #based on plot content, don't define it here
    )
}
