library(dplyr)
library(rvest)

url <- "https://choonghyunryu.github.io/NLP_TA/"
whatis <- "https://www.r-project.org/about.html"

docs_whatis <- readLines(whatis)

# 웹 페이지 긁어오기
html <- rvest::read_html(url, encoding = "UTF-8")

# 문장 추출
str_docs <- html %>%
  html_nodes("p") %>%
  html_text()

# 문장 조회
str_docs

# 내용 없는 문장 제거
str_docs[str_docs != ""] 

tabs <- html %>%
  html_nodes("table")

# 테이블 가져오기
tabs[1] %>% 
  html_table()
