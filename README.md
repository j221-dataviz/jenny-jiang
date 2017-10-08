# jenny-jiang

#### [Educational Attainment for Workers 25 years and older by detailed occupation](https://www.bls.gov/emp/ep_table_111.htm)

1. Is the industry becoming education-biased? 
2. Education and salary and different industries 


There are two RMarkdown files. The first one is the cleaning and joining dataset together.
1. all_dat_set_clean.Rmd 
This one contains cleaning/joining of different years.
2. EDA.Rmd
This one loads the cleaned dataset and some plots. I only ploted `EDUCATION by detailed occupations`  but didn't find anything very interesting. 
I am still working on the other four datasets and hope I could find some useful/insightful things.

I have 5 datasets I am interested in working with. 

- EDUCATION by detailed occupations 
- EDUCATION AND UNEMPLOYMENT RATE
- EMPLOYMENT PROJECTION 
- OCCUPATIONS THAT NEED MORE EDUCATION FOR ENTRY ARE PROJECTED TO GROW FASTER (this one is very interesting but I haven't done a lot of cleaning/analysis)
- EDUCATION AND TRAINING ASSIGNMENTS BY DETAILED OCCUPATION (this is more like a codebook)



 I [searched the archive](https://www.bls.gov/bls/news-release/home.htm#ECOPRO) but didn't find the dataset. However, I was able to get 2008, 2009, 2010-2011, 2012-2013, 2014-2015 (they changed the method to combine two years together) using wayback machine.

I found [similar dataset on this page](https://www.bls.gov/emp/ep_education_training_system.htm) 
- Earnings and unemployment rates by educational attainment
- Educational attainment for workers 25 years and older by detailed occupation
- Education and training assignments by detailed occupation, 2014
- Employment, wages, and projected change in employment by typical entry-level education


I plan to use wayback machine to trace down these datasets, so I will be able to get information about educational attainment, earnings by detailed occupation. Though I couldn't do a long-term time series comparison, at least I have 5 different time points. 
