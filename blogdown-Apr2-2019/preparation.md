scheduled time: 4.2

# 1. Abstract

A personal website or blog is a great place to record, share and communicate your thoughts and learning process, however the whole procedure might seem complex to those without relevant experience. An R package developed by Yihui Xie, blogdown, makes it easy to build a website using R Markdown and Hugo. Andrea will talk about what is blogdown and why you should use it, and walk you through the basic steps to publish (for free!) your website using Netlify and rbind.io. 



About the speaker: 

Andrea (Chi Zhang) is doing her PhD at Department of Biostatistics, University of Oslo, working on Electronic Health Record data. She is interested in time series data related to health, and is eager to learn new tricks in R and share what she has learnt in her newly built website using blogdown. Outside work she is an active supporter of non profit organisations.





## resource links 

### talks from Yihui 

https://yihui.name/cn/vitae/

https://slides.yihui.name/2017-blogdown-UNL-Yihui-Xie.html#1

https://slides.yihui.name/2017-blogdown-CGM-Yihui-Xie.html#1

https://slides.yihui.name/2018-blogdown-rstudio-conf-Yihui-Xie.html#7

https://slides.yihui.name/2017-DSM-rmarkdown-Yihui-Xie.html#1

https://resources.rstudio.com/wistia-rstudio-conf-2018-2/create-and-maintain-websites-with-r-markdown-and-blogdown-yihui-xie-2 (Rstudio conf 2018)

### meetup talk examples 

https://github.com/rladies/meetup-presentations_oslo/blob/master/topic_model/Rladies_TM_031218.pdf





### starter tutorials (blogs and slides)

https://alison.rbind.io/slides/blogdown-workshop-slides.html?utm_content=buffer7ad34&utm_medium=social&utm_source=twitter.com&utm_campaign=buffer#101 by Alison Hill, and her blog 

https://rladies-melb-blogdown.netlify.com/#1 by Emi Tanaka 





### more advanced material 

Alison Hill's spoonful series

https://alison.rbind.io/post/2019-02-21-hugo-page-bundles/ page bundles 

https://alison.rbind.io/post/2019-02-19-hugo-netlify-toml/ netlify.toml file 

http://lcolladotor.github.io/2018/03/08/blogdown-archetype-template/#.XG_tbC2ZPNY (copy all after # ) archetype (template)

http://amber.rbind.io/blog/2016/12/19/creatingsite/#github by Amber Thomas



https://github.com/DASpringate/samatha a package 

# 2. Details of each section

## Motivation part 

writing is important - help yourself, help others 

just a way to **oranise** your rmd files - either blogdown, or bookdown (more serious). don't necessarily webpage for the sake of webpage (book). 

academic **resume** (hence the academic theme)



## technical part 

*use a mindnode to link all these together !including the site structure!*



### R Markdown 

in short: rmd is an authoring format for data science. it has a whole ecosystem, 2016 bookdown, 2017 blogdown, 2018 pagedown (articles, business card, resume, html posters, letters, books with crc publisher) 

Book: R Markdown: the definitive guide http://bookdown.org/yihui/rmarkdown

most important feature of rmd might be the **reproducibility** https://resources.rstudio.com/rstudio-conf-2019/r-markdown-the-bigger-picture! (75% - 90% of preclinical results are irreproduceable) We should create maps (like Columbus to the new world who brought a map, but not proof of the existence of new world ), not proofs. 



yihui has strong belief in HTML: only requires a web browser, easy to embed media 



will markdown save us? 

#### pandoc 

a markdown engine (hugo's is blackfriday) 

### configurations 

`config.toml` file. Different for each theme. 

single bracket [social] represents a table

double bracket [[menu.main]] indicate array of tables. 



#### Yaml header parameters: say about author etc 





### HUGO

Static site: web server sends exactly the same content to web browser no matter who visits the web pages, doesn't depend on conditions. Deployment here means to copy static files to a server. 

dynamic site: uses PHP (for example). each user has a profile page

free, open source, easy to install, fast. general purpose and not just for blogs

Reasons why blogdown chooses Hugo: fast, and active community. 

However: Hugo doesn't support R markdown, so we can't generate results using R code on your webpage because you can only use static Markdown documents. 

https://alison.rbind.io/post/2019-02-19-hugo-netlify-toml/ 

https://lmyint.github.io/post/hugo-academic-tips/ tips for using academic theme 





