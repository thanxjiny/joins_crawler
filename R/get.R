
#### library
 
library(rvest)
library(dplyr)

# link page check

max_page <- function(tar_url){
  read_html(tar_url) %>% 
    html_nodes("div.paging_comm .link_page") %>% 
    html_text() %>% 
    as.numeric() %>% 
    max() %>%
    return()
}

tar <- "https://news.joins.com/society/accident/list/1?cloc=joongang-section-subsection"

max <- max_page(tar)

tar_url <- "https://news.joins.com/society/accident/list/1?cloc=joongang-section-subsection"

for(i in 1:max){
  tar_url <- paste0("https://news.joins.com/society/accident/list/",i,"?cloc=joongang-section-subsection") 
  print(tar)
}


max_page(tar)



