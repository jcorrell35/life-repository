---
date: '2025-02-24'
draft: false
author: "A little guide/story of how I made this site"
title: 'This Website'
---

This website is built with [Hugo](https://gohugo.io), using the [Terminal](https://github.com/panr/hugo-theme-terminal/) theme.  
  
Hugo takes [Markdown](https://www.markdownguide.org/) files and turns them into static web pages. It was written in Go and it’s a great way to develop a great personal website that has simple navigation, tagging features, and easy to use themes.  
  
For my site I went with the Terminal theme. I also decided to use the yaml format for the syntax files. For that, I renamed the default hugo.toml file to hugo.yaml and [changed the syntax to the yaml format](https://he3.app/en/blogs/yaml-to-toml-a-comprehensive-guide-for-developers/).   

Usual setup for a project looks something like this:  
----------
> hugo new site quickstart && cd quickstart   
>  
> git init  
>  
> git submodule add https://github.com/theNewDynamic/gohugo-theme-ananke.git themes/ananke    
>  
> echo "theme = 'ananke'" >> hugo.yaml
  
I ran into some issues using this method when it came to deploying the site to GitHub. Therefore I ended up copying the files from the theme folder into the base directory. 
![Files](../../filesystem.png#img.center)  
This works, however if you want to change the theme at some point it becomes more difficult than just changing it in the hugo.yaml file.

I also implemented a simple menu system for the website's navigation: 
![MenuCode](../../menucode.png#img.center)   
  
I applied the following code to the hugo.yaml file:  
> centerTheme = "true"  
And finally I added a taxonomy called "places to be able to organize posts by location/state. This is also done inside the hugo.yaml file:  
![Taxonomies](../../taxonomies.png#img.center)  

**Finally, to run the website locally on your machine you can run the following code:**
> hugo server --buildDrafts  
  
I use the option --buildDrafts to build all blog posts no matter what the status of the draft property is in the file. You can set the draft property to true so your post isn't live until you change the value.  
>  draft: true  
  






