# Save to PDF

have chrome 

```R
library(pagedown)
talkpatth <- paste0(getwd(), '/mid-eval-May2-2019/mid-eval.Rmd')
chrome_print(talkpath)   
```

The corresponding pdf will be save in the same directory, `/mid-eval-May2-2019/`. 



### code embedding 

always remember to set `{r, eval = FALSE}`! 







# A twist of Hygge 

at the YAML header, use `css: ['default', 'default-fonts', 'hygge']`

 then in the Rmd document, 

```markdown
.content-box-blue[blue]

.full-width[.content-box-red[blue]]

.pull-left[.full-width[.content-box-purple[test]]]

```

will create nice boxes. 





```{r setup, include=FALSE}
options(htmltools.dir.version = FALSE)
```

```{r xaringan-themer, include=FALSE}
library(xaringanthemer)
solarized_light(
  code_font_family = "Fira Code",
  code_font_url = "https://cdn.rawgit.com/tonsky/FiraCode/1.204/distr/fira_code.css")

```

