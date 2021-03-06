library(blogdown)
library(bookdown)

languageserver

rm(list = ls())

setwd("D:\\OneDrive\\git\\avianlab\\")
options(repos=structure(c(CRAN="https://mirrors.tuna.tsinghua.edu.cn/CRAN/"))) 

if (!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")
BiocManager::install("shiny")

BiocManager::install("multtest")
install.packages("shiny")
install.packages('blogdown') 
blogdown::install_hugo()

blogdown::new_site("D:\\OneDrive\\git\\avianlab\\", theme = 'RCJacH/hugo-webslides')
#blogdown::hugo_version()
blogdown::new_post()
blogdown::hugo_build()
blogdown::serve_site()


ssh-keygen -t rsa -b 4096 -C "$(git config user.email)" -f gh-pages -N ""

ssh-keygen -t rsa -b 4096 -C "bio_zhang@msn.com" -f gh-pages

git init
git add .
git commit -m 'Blog update'
git remote add origin git@github.com:biozhangjn/Blog.git
git pull --rebase origin master
git push -u origin master




