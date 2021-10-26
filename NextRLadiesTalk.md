> Brainstorm what I could share within 45 to 60 min about my work 

I have 2 projects where one is completed. The first one is pretty much covered in the paper, the second one requires more thinking. 

### Overall 

- My favoriate data structure is list, because I'm a fan of `purrr`... therefore I use `map` and `do.call(rbind)` a lot. 

what's really important for this type of dynamic, complex data (in functional programming)

- nested data structures (tibble?)
- package development (promote visibility, unit testing, documentation )

`purrr::partial, if_map, reduce, ...` 

- use of sensitive data: TSD? others? 
- 

#### Longitudinal data plotting

spaghetti plots 

`brolgar::facet_strata(), facet_sample()`

The reason that I don't use tsibble or plot subsamples (e.g. each patient) is that the volumn is large 





### Project 1 

- open EHR data
- feature learning 
- R Keras and neural networks

https://resources.rstudio.com/rstudio-conf-2020/neural-networks-for-longitudinal-data-analysis-dr-sydeaka-watson

- put some ggplots (unfortunately I only use it when I need to do the final graphs. )



### Project 2/3

distinguish each group of patients, and how we decided to focus on one group  

What I lack the most in this new project is rigorous statistical modeling. I know I definitely have things that I want to try: 

- Proper modeling of the time series: forecast! 
- use of `dplyr` functions extensively: filter, map, lag, left_join.. 
- `glmnet` also has a sticker



I can not show the real data because it's protected (TSD)