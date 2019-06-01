## My Project website

Examples: 

- My full CV is available [here](R files for SDAFE/rf_plot.pdf). Actually keep it on [main website](https://sanchit-singh.github.io/).
- My shiny app [here](shinynew/app.R). Must find a way to depploy this app on Github server. 
Answer is RStudio's [shinyapps.io](https://www.shinyapps.io/admin/#/dashboard). Free account created (limitatins of 5 apps and 25 hours of active use monthly). Package 'rsconnect' has been installed. Token has been added to identify my Mac. Run this everytime to deploy 
```
library(rsconnect)
rsconnect::deployApp('shinynew/app.R')
where 'shinynew' is the name of the app
```
If and when the app is running, it will be hosted [here](https://sanchit-singh.shinyapps.io/shinynew/), which is a server hosted page by Rstudio.

- I wonder if I can run R scripts directly online on Github itself by somehow packaging everything? At-least I can try using knitr to create documents with R script results.

Working within RStudio:

- Copy the url of the github repository and create a new versin control project in Rstudio with that (create a local copy of the repo). Having created the Rstudio project, markdown files can also be edited/preview straight from Rstudio. Better still, create *.rmd files that can embed R code (as well as python code) and the results/plots using knitr.





### Markdown
You can use the [editor on GitHub](https://github.com/sanchit-singh/Data-Analysis-with-R/edit/master/README.md) to maintain and preview the content for your website in Markdown files.

The website for this project is 
https://sanchit-singh.github.io/Data-Analysis-with-R/ .

Whenever you commit to this repository, GitHub Pages will run [Jekyll](https://jekyllrb.com/) to rebuild the pages in your site, from the content in your Markdown files.

Markdown is a lightweight and easy-to-use syntax for styling your writing. It includes conventions for

```markdown
Syntax highlighted code block

# Header 1
## Header 2
### Header 3

- Bulleted
- List

1. Numbered
2. List

**Bold** and _Italic_ and `Code` text

[Link](url) and ![Image](src)
```

For more details see [GitHub Flavored Markdown](https://guides.github.com/features/mastering-markdown/).

### Jekyll Themes

Your Pages site will use the layout and styles from the Jekyll theme you have selected in your [repository settings](https://github.com/sanchit-singh/Data-Analysis-with-R/settings). The name of this theme is saved in the Jekyll `_config.yml` configuration file.

### Support or Contact

Having trouble with Pages? Check out our [documentation](https://help.github.com/categories/github-pages-basics/) or [contact support](https://github.com/contact) and we’ll help you sort it out.
