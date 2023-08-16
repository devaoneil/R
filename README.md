# Faculty Tutorial Day 1: Intro to R
Google Doc - please record your name & your interest in Data Science
https://docs.google.com/document/d/1N2RYsOyNiG4mpGnnIOGaBp9KONaQXdmQ2-c6SfsM1Ck/edit?usp=sharing

Powerpoint:  https://github.com/devaoneil/R/blob/main/Getting%20Started%20with%20Data%20Science%20in%20R.pptx

## A lab in R to get us started: 

https://openintro.shinyapps.io/ims-01-data-01/#section-data-in-r

## Download and install R and then download and install RStudio

https://posit.co/download/rstudio-desktop/

If you prefer the cloud (nothing to download or install):
https://posit.cloud/      [you can login with your Google account without making a separate acct]

## How to start a new program in RStudio and read in a dataset

You can load a dataframe with data without using tidyverse, but you might as well install tidyverse since you need it for glimpse() and various data wrangling procedures. 

1. Install tidyverse (first time only):
   
  install.packages("tidyverse")

2. Put your .csv file or whatever your data file is into the same directory as your program. Then, change the working directory to this directory:

### Session -> Set Working Directory -> Source File location 

3. Load tidyverse (do this at the top of each program) and read in the data
  
    library(tidyverse)
   
    df <- read.csv("HW7_data.csv")
   
    glimpse(df)
     
 Now you have a dataframe called df that you can work with. 



## If you are interested in learning python instead, some starting points are provided below.

(1) If you want to learn data science, here is a set of python notebooks:

https://jakevdp.github.io/PythonDataScienceHandbook/

Running python programs is easy if you use colab, which can be set up through Google drive. Just go to https://colab.research.google.com/

and click Google Drive and then "new notebook" to get started.  

(2) If you want to learn python programming at a very introductory level, I suggest:

https://www.py4e.com/

