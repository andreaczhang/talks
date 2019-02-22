# My blog post for this topic 

The minimum steps you need to build your own website

## 1. Background reading 

- I am using Alison Presmanes Hill (co-author of the book)'s tutorial https://alison.rbind.io/post/up-and-running-with-blogdown/#in-github. 
- Amber Thomas http://amber.rbind.io/blog/2016/12/19/creatingsite/ 
- Danielle Navarro's post: you can delete bravely. https://djnavarro.net/post/2018-04-27-starting-blogdown/





## 2. My set up 

MacOS, R (version) and RStudio (version?), GitHub 



A few ways to deploy, I choose Netlify and free subdomain *.rbind.io. 



## 3. First timer 

### 3.1 Github

create a new repo, initialise with README but no .gitignore. 

- use Netlify and rbind: name repo anything you want (chosen)
- host as GitHub Page: name `yourgithubusername.github.io` 



### 3.2 RStudio 

1. install blogdown 

   ```R
   if (!requireNamespace('devtools')) install.packages('devtools')
   devtools::install_github('rstudio/blogdown')
   ```

2. install hugo 

   ```R
   blogdown::install_hugo()
   ```

3. start new project using version control. Use `Serve site` add in. 

4. build (and select theme)

   ```R
   blogdown::new_site(theme = 'gcushen/hugo-academic', theme_example = T)
   ```

   then delete the example content if you wish. 

   use `save` instead of `knit`. 

5. add/commit/push changes to github. 





### <u>investigate: what to delete?</u> 

Config.toml: don't touch. instead, modify greatly. 

#### content (our focus, since it has home, content, etc)

assume your working directory is `bd-demo`. 

- Author: I have deleted it. 

- Home: this should give you info on what widgets to appear on your homepage. 
  -  `about.md`: this is about/ biography widget. you can choose to alter the title 
  - `post.md` and others, you can choose. 
- Post
  - `_index.md` yaml, title 
  - it's not enough to delete just one folder here. also need to delte from `public/post/folder`.  (maybe not)



#### static 

need to save images there. 

#### Resources: don't touch

#### Public: don't touch 

#### Themes: don't touch



### Homepage: what appears? 

by selecting `active = true` in the corresponding files under `/home`, this widget will appear. 

`config.toml` allows you to control the look, including changing the portrait photo. 









## 4.  New posts 

### distinguish the `index.Rmd`s. 

`bd-demo/index.Rmd` doesn't give you much info. Just leave it there. 

YAML header!!

### method 1: use `new post` addin. 

### method 2: directly create markdown / R markdown posts



### draft posts

add `draft: TRUE` in YAML front matter. 

the first lines between `+++` and `+++` are YAML front matter (?) or --- ---? 



### images 

the only working way I have tried is from Alison Hill:

- add image to `/static/img/` folder, then reference in the blogpost using `![pic](/img/pic.jpg)`. The ONLY one that worked. 



## 5. Deploy

Remember that you need to push to github!!! 

1. go to netlify, use GitHub account 
2. (follow my steps) and get a random domain name 



### `*rbind.io` domain names 

offered by Rstudio 

1. go to bind/support page, open a new issue 
2. give them netlify subdomain name , and want it to be the new one 







# Issues:

1. problem rendering images using addin. and feature. 