##http://zevross.com/blog/2015/05/19/scrape-website-data-with-the-new-r-package-rvest/


library(rvest)
url <- read_html("http://www.goodfood.com.au/good-food/search.html?ss=Good+Food&max=19&type=FoodRestaurant")
#score <- html_nodes(html, ".score")
#length(score)
#> [1] 30
#score[1:2]
#> {xml_nodeset (2)}
#> [1] <td class="itemprop" itemprop="actor" itemscope="" itemtype="http:// ...
#> [2] <span class="itemprop" itemprop="name">Will Arnett</span>
  
#clean up
selector_name<-".caption a"
selector_rating<-".score"

fnames<-html_nodes(url, selector_name) %>%
  html_text()
fnames2<-html_nodes(url, selector_rating) %>%
  html_text()

head(fnames)
head(fnames2)


## Clean up
to_remove<-paste(c("\r\n                        \r\n                                    ", "\n\r\n                    "), collapse="|")

fnames<-gsub(to_remove, "", fnames)
fnames2<-gsub(to_remove, "", fnames2)

head(fnames)
fnames2

head(fnames)

## create a vector


## loop
