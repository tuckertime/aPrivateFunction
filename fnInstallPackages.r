# install and load multiple R packages.

fn_install_packages <- function(pkg){
    new.pkg <- pkg[!(pkg %in% installed.packages()[, "Package"])]
    if (length(new.pkg)) 
        install.packages(new.pkg, dependencies = TRUE)
    sapply(pkg, require, character.only = TRUE)
}

# enter packages below, separated by , and enclosed in ""
packages <- c("ggplot2", "plyr", "reshape2", "RColorBrewer", "scales", "grid","mclust","e1071","timeseries","randomforest","wq","DMwR")
fn_install_packages (packages)

#install
