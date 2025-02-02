Topics of interest 



- Travel medicine
- clinical trial on vaccine and management of infectious diseases



### Prepared study

[link](https://www.ebpi.uzh.ch/en/research/chronic_conditions_health/prepared.html)

multicenter, observational cohort 

characteristics for pre-exposure prophylaxis and incidence of HIV and STI



### Travel clinic

HIV, TB & emerging pathogens like covid 

corona antibody study





# Things to show

Quarto dashboards https://quarto.org/docs/gallery/#dashboards

My demo



### Wishes 

- opportunities to apply **newest technology** on open source dashboarding for **public sector**
- possibility to learn more about **NLP**, apply **python** too (could be relevant for the chatbot?)



# About my projects





## EHR

New EHR project (MIMIC4)

- 







## SP

Norsyss: norwegian syndromic surveillance system, on infectious diseases based on consultation with GP and out-of-hours primary care facilities (ICPC2). The aim is to detect outbreaks for infectious diseases and provide early warning

MSIS: notifiable communicable diseases (confirmed)

Sysvak: vaccine register

Fetched data from multiple sources and formats: 

- API (nordic data)
- excel files ()
- remote server and databases, internal FHI registries via SQL

Not only numbers for new infections, but also hospitalization, ICU, new vaccination etc





## Collaborations

### Normomo / WHO / ECDC

all cause mortality

responsible to receive data, run the algorithm provided by SSI, send results (data and visualization)

Model: glm poisson regression corrected for over-dispersion

weekly data, use 5 years to fit 

need to correct for reporting delay



### NAV 

strategy: vaccine-only (after 2022)

Aim: compare medically certified sick leave (sick leave) and primary healthcare consultation (GP visits) in 2023 v 2010-19 trends

Data 

- working person-years lost (sick leave registry)
- n gp visits, with ICPC2 code. Some are symptoms and some are diagnosis

Background

- icpc-2 A04 (weakness, tireness) increased considerably 
- psychological also increased

Method

- use 2010-19 data to predict expected baseline for 2020-23, then calculate the excess values
  - Rate per 100k ~ year as continuous linear variable
  - rate per 100k ~ year as cubid spline with 2 or 3 df
  - select model with lowest AIC
- bayesian regression for the selected model
- adjust for false discovery rate

Result

- 30+ are significant outcomes that are different from pre-covid trends
- working person-years lost to sick leave: around 15.000 
- Notable codes: fatigue and tiredness, psychological complaints, respiratory
- can not estimate for COVID: as the code did not exist before 2020



### COVITA

A set of studies that assessed characteristics on cohorts from two regional hospitals in Norway, during the first wave of pandemic (2020)

- cases (PCR positive) 400
- controls (PCR negative) 719
- population control (pre covid) 14k, age matched

generalizability: location and age are limited; 

recall bias and response bias for the participants; healthcare seeking behavior difference

unmeasured confounders



### Noreden / norkost



### Other statistical studies 

Observational studies

- <span style = 'color:red'>propensity score</span>: achieve balance in exposed and unexposed groups 
- 



RCT

- generally small in scale, phase 2 studies
- 



