### Update Report Oct 23-27
#### Shangjun (Jenny) Jiang

I have identified the total number by detailed occupation data. This week, I have been trying to join these two datasets together.
The first one is the dataset I have (education by detaield occupation). The problem with that dataset is that it is divided by percentages, instead of thte absolute number. It will be difficult to do comparison across three time points.
The second one is the total number by detailed occupation.
By joining this two datasets together, I will be able to do comparison.

However, I have encountered some problems. 
1. The classification is differenet. After talking with Peter, I was able to identify the first six digits of the codes and will do an inner-join first, then anti-join.
2. I will use 2011 data to represent the 2010-2011, the average of 2012+2013 for 2012-13. The average of 2014+2015 for 2014-15. 

When I dig into the dataset, there are some clear trends of doctors/lawyers, you must have a degree of college/professional schools. For developers, it is not a must. Therefore, it would be interesting to see the comparison across time. Additionally, I could also use the salary data later and do a join and see the comparison. Another idea is to use the projection.

Some info from the website:



[Occupation data](https://www.bls.gov/cps/demographics.htm)

- January 2000–December 2010 use the 2002 Census occupational classification derived from the 2000 SOC.

- January 2011–present use the 2010 Census occupational classification derived from the 2010 SOC.

- ##### Occupation data beginning with January 2011 are not strictly comparable with earlier years; see additional information below.


Historical comparability of occupation and industry data from the Current Population Survey
BLS publishes both employment and unemployment data by occupation and industry from the CPS.

The occupational classification reflects the type of job or work that the person does, while the industry classification reflects the business activity of their employer or company. The occupational and industry classifications are based on a person’s sole or primary job, unless otherwise specified. For the unemployed, the occupation and industry are based on the last job held.

Changes in the way industries and occupations are defined over time affect the comparability of historical data. As indicated below, some of the changes in classification represent complete breaks in the time series.


