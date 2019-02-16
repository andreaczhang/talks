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





### what to delete?

assume your working directory is `bd-demo`. 

#### content (markdown or yaml? strange format)

- Author: I have deleted it. 

- Home: this should give you info on what widgets to appear on your homepage. 
  -  `about.md`: this is about/ biography widget. you can choose to alter the title 
  - `post.md` and others, you can choose. 
- Post
  - `_index.md` yaml, title 
  - it's not enough to delete just one folder here. also need to delte from `public/post/folder`. 





### distinguish the `index.Rmd`s. 

`bd-demo/index.Rmd` doesn't give you much info. Just leave it there. 



## 4.  New posts 

`new post` addin. 

### draft posts

add `draft: TRUE` in YAML front matter. 



### markdown posts





### R markdown posts



## 5. Deploy











