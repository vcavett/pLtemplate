usethis::use_package("ggplot2")
usethis::use_package("magrittr")

theme_pL <- function(){
    font <- "Helvetica"   #assign font family up front

    theme_bw() %+replace%    #replace elements we want to change

    theme(

      #grid elements
      panel.grid.major = element_blank(),    #strip major gridlines
      panel.grid.minor = element_blank(),    #strip minor gridlines
      axis.ticks = element_blank(),          #strip axis ticks

      #text elements
      plot.title = element_text(             #title
                   family = font,            #set font family
                   size = 18,                #set font size
                   face = 'bold',            #bold typeface
                   hjust = 0.5,                #left align
                   vjust = 2,
                   margin = margin(t = 5)),               #raise slightly

      plot.subtitle = element_text(          #subtitle
                   family = font,            #font family
                   size = 12,
                   margin = margin(b = 5)),               #font size

      plot.caption = element_text(           #caption
                   family = font,            #font family
                   size = 9,                 #font size
                   hjust = 1),               #right align

      axis.title = element_text(             #axis titles
                   family = font,            #font family
                   size = 12,
                   face = 'bold'),  #font size

      axis.title.y = element_text(margin = margin(10,10,10,10),
      														angle = 90),

      axis.text = element_text(              #axis text
                   family = font,            #axis famuly
                   size = 9,
                   margin = margin(3,3,3,3)),                #font size

      axis.text.x = element_text(            #margin for axis text
                    margin=margin(3,3,3,3)),

      legend.title = element_blank(),

      panel.background = element_rect(size = 2)
      #since the legend often requires manual tweaking
      #based on plot content, don't define it here
    )
}
