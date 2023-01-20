#remotes::install_github("ashenoy-cmbi/grafify", dependencies = T)

#Libraries ----
library(tidyverse) 
library(grafify)

#Data ----
mpg

# Scatterbar SD -----
mpg %>% 
    plot_scatterbar_sd(cyl, hwy, jitter = 0,s_alpha = 0.5)

# Scatterbox
mpg %>% 
    plot_scatterbox(cyl, hwy, jitter = 0.1, s_alpha = 0.5)

# Dot violin
mpg %>% 
    plot_dotviolin(cyl, hwy, dotsize = 0.4, ColPal = "bright")

# Charting 3 variables
mpg %>% 
    plot_3d_scatterbox(cyl, hwy, class, s_alpha = 0)

# Before after plots
mpg %>% 
    group_by(model, year) %>% 
    summarise(mean_hwy = mean(hwy)) %>% 
    ungroup() %>% 
    plot_befafter_colors(year, mean_hwy, model)




