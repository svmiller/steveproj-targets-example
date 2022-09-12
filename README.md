# An example of `{steveproj}` (and `{stevetemplates}`) with `{targets}` for a reproducible workflow


So, briefly, before this becomes a bigger tutorial, fork this project on Github. Fire up Rstudio, and run the following commands to make sure you have the appropriate packages installed. [`{steveproj}`](https://github.com/svmiller/steveproj) is not strictly required, but it will eventually become a shortcut toward generating this kind of project in Rstudio.

```{r, eval=F}
packs <- c("targets", # <- main package of interest here
           # Below: primary engines for documents
           "rmarkdown", "bookdown", "stevetemplates", 
           # Below: stuff for toy analysis example 
           "stevedata", "tidyverse", "modelr", "stevemisc",
           # Below: add-ons for formatting regression tables in ms.Rmd
           "huxtable", "kableExtra", "flextable", "modelsummary")
new_pack <- packs[!(packs %in% installed.packages()[,"Package"])]
if(length(new_pack)) install.packages(new_pack)
```

Assuming all those packages are installed, run the following functions. These will make the `{targets}` machine fire up and be ready to go brrr.

```r
library(targets)
use_targets()
```

Now, check this out.

```r
tar_make()
```

![](https://i.kym-cdn.com/entries/icons/original/000/035/627/cover2.jpg)

If you want to do this interactively so you can monkey around with the main objects, do this.

```r
tar_load_globals()
prep()
analysis()
qi()
```


![](https://i.kym-cdn.com/entries/icons/original/000/035/627/cover2.jpg)
