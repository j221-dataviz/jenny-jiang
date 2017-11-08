# Shangjun (Jenny) Jiang 
### Journalism 221 Final Project Fall 2017


### Questions I plan to answer:
1. Is the industry becoming education-biased? 
2. Education and salary across different industries (maybe?)

### Method:
I am mainly using this dataset [Educational Attainment for Workers 25 years and older by detailed occupation](https://www.bls.gov/emp/ep_table_111.htm)


### HOW to read this repository

There are 4 folders.
1. `eda` This one contains some EDA files I did, may not relevant to my final analysis.
2. `raw_data` this one contains the dataset I got from the BLS
3. `clean_data` this one contains cleaned dataset.
4. `image` this one contains some plots/screenshots that I use for the update report.

There are 2 `RMarkdown + html` files. The first one is the cleaning and joining dataset together.
1. `data_clean+EDA.Rmd` 
This one contains cleaning the educationa attainment dataset and join the total number of workers by detailed occupations. Therefore, I can get the number, intead of percentage. In this way, I will be able to compare the absolute number. 
2. `some_plots.Rmd`
This one loads the cleaned dataset and inlcudes some plots. I only ploted `EDUCATION by detailed occupations` and I aggregated the dataset by different occupations and different education levels. 

There are also 2 MarkDown files that detail my update report.
1. `update report oct23-27.md` this one is the first update report.
2. `update 2 Nov 10.md` This one is the official update report which will be graded. PLEASE TAKE A LOOK AT THIS ONE for grading.



#### Next Steps 

From my preliminary findings, the industry in general is becoming education-biased, especially for CS, business related occupations. They require college+ qualifications.

There are other datasets that I could link or dig into.

- EDUCATION by detailed occupations (worked on)
- Education and unemployment rate 
- Employment projection 
- Occupations that need more education for entry are projected to grwo faster (this one is very interesting but I haven't done a lot of cleaning/analysis)
- Education and training assignments by detailed occupation(this is more like a codebook)





### How did I get the dataset

 I [searched the archive](https://www.bls.gov/bls/news-release/home.htm#ECOPRO) but didn't find the archived dataset. However, I was able to get 2008, 2009, 2010-2011, 2012-2013, 2014-2015 (they changed the method to combine two years together) using wayback machine.

I found [similar dataset on this page](https://www.bls.gov/emp/ep_education_training_system.htm) 
- Earnings and unemployment rates by educational attainment
- Educational attainment for workers 25 years and older by detailed occupation
- Education and training assignments by detailed occupation, 2014
- Employment, wages, and projected change in employment by typical entry-level education


I plan to use wayback machine to trace down these datasets, so I will be able to get information about educational attainment, earnings by detailed occupation. Though I couldn't do a long-term time series comparison, at least I have 3 different time points. 
