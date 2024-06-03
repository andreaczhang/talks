Date: 9.18

Chairs

- [Mahmoud Hallal](https://www.linkedin.com/in/mahmoud-hallal/) (Roche). Bioinformatics, computational biology. R dev.
  - NEST
  - https://github.com/insightsengineering

- [Tad Lewandowski](https://www.linkedin.com/in/tadeuszlewandowski/) (JJ). Data engineer, stat programming, viz, validation, automation. Previously Roche, r dev. 
  - https://rconsortium.shinyapps.io/submissions-pilot2/
  - NEST

- Rashad Rasul (BMS). Previously Roche Novartis. ADaM. Stat programmer SAS. Meta analysis of biomarkers



### Key words

real world data, electronic health records, exploration, quality control, temporal data, patient journey, close collaboration with doctors 



### Abstract (150)

Logic flow

- RWD has a more and more important role, as it provides information on how drugs are used, and are valuable for RWE
- however, the data quality in RWD is not guaranteed
- time series in nature 
- a lot of focus has been on prediction models, now more on estimands
- how do you draw good conclusion without understanding whether the data is good?
- majority of time has been spent on understanding the data, however how data is recorded in EHR is highly situational, without collaborating with clinicians this is very difficult to know - should not blindly automate
- 3 parts
  - how much error there are (use references, and AHUS data), explain possible sources of errors: design flaw, fatigue, etc - with example of AB 
  - these errors or things analysts don't know, on top of already messy mixed type EHR data
  - present an open source tool for easy QC from the analysis side (not clician side) - not only temporal events ordering, but also some summaries to investigate missing, proportion etc 
  - ?



#### <span style = 'color:red'>check these</span>

- [flatiron linkedin](https://www.linkedin.com/company/flatiron-health/), get some idea on how industry does things. 
- add the stuff from my workgroup, and other [RWE work group](https://advance.phuse.global/display/WEL/Real+World+Evidence) content 
  - [quality](https://advance.phuse.global/display/WEL/Quality+and+Reusability+of+Real+World+Data)
  - [estimands](https://advance.phuse.global/pages/viewpage.action?pageId=102858868)
  - [Archive](https://phuse.global/Communications/PHUSE_Archive/1), filter on 'real world', some content from 2019
  - should also add data quality in general, not just RWD
- OHDSI
- current research trend in prediction models and estimands, using EHR. focus especially on their choice of data, pay attention to how they describe the processing
- errors (this can be checked from AHUS paper literature list. do it after finishing the paper)
- drug dose monitoring over time, ICE, visual presentation of this kind of data should be interesting 





Abstract max 150 (this paragraph below is 150 words)

> Statisticians using multiple softwares (SAS, R, Python) will have found differences in analysis results that warrant further justification. Whilst some industries may accept results not being the same as long as they are "close", the highly regulated pharmaceutical industry would require an identical match in results. Yet, discrepancies might still occur, and knowing the reasons (different methods, options, algorithms etc) is critical to the modern statistician and subsequent regulatory submissions. In this talk I will introduce CAMIS: Comparing Analysis Method Implementations in Software (CAMIS). https://psiaims.github.io/CAMIS/ It is a joint-project between PHUSE, the R Validation Hub, PSI AIMS, R consortium and openstatsware. The aim of CAMIS is to investigate and document differences and similarities between different statistical softwares such as SAS and R. We use Quarto and Github to document methods, algorithms and comparisons between softwares through small case studies, and all articles are contributed by the community.

