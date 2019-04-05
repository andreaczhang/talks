---
title: "Statistical hazard-harm control in health institutions"
subtitle: "Mid term evaluation seminar"
author: "Chi Zhang"
date: "2019/05/02"
output:
  xaringan::moon_reader:
    css: [robot, robot-fonts]
    lib_dir: libs
    nature:
      highlightStyle: github
      highlightLines: true
      countIncrementalSlides: false
---

class: middle

# Outline

### Progress overview
### Paper 1

Interveneable predictions of hospital acquired infection via a hierarchical lasso procedure using Electronic Health Records

### Paper 2

Patient phenotyping via coupled tensor factorization

### Further works 



---

# Progress

(context between the papers)





---

# Paper 1 



### Background and Motivation:

- Make use of Electronic Health Records to improve hospital management
- A model for HAI on a certain day in the future 



- Outcome: HAI (patients with pneumonia, urinary tract infection, etc)
- Data type: 
  - Lab tests: positive results, high white blood cell count, … 
  - Patient Characteristics: BMI, fever, ...
  - Procedures and medication: antibiotics, vasopressor drugs, ...
  - Staff: specialist nurses, working overtime, ...



### Objective: 

- a framework based on an interpretable model to predict an outcome
- time series predictors and response 
- Tradeoff: interterpretability vs predictivity





---



### 2 steps approach

#### step 1: variable selection

select important time series covariates via hierarchical lasso penalty

$$min_{\beta} \sum_{t =1}^T || y^{(t)}  - \sum_{j = 1}^{p}  \sum_{l = 0}^{L} \beta_j^{(l)}  x_j^{(t-l)} ||_2^2 + \lambda \sum_{j = 1}^{p}  \sum_{l = 0}^{L}|| \beta_j^{(l)} ||_1$$

The fitted model prediction from the hierarchical variable selection is 

$$\hat{y}^{(t)} = \sum_{j = 1}^{p}  \sum_{l = 0}^{L} \hat{\beta}_j^{(l)}  x_j^{(t-l)} $$





---

#### step 2: prediction improvement

refit on residuals and historical lags of the response to improve prediction

Denote the residuals as $r^{(t)} = y^{(t)} - \hat{y}^{(t)}$

$$\tilde{y}^{(t)} =  \sum_{k = 1}^{K} \hat{\phi}^{(k)}  y^{(t-k)} + \sum_{j = 1}^{p}  \sum_{l = 0}^{L} \hat{\beta}_j^{(l)}  x_j^{(t-l)} $$









---

### Intervention









---

# Paper 2

Data: MIMIC-III Critical Care Database (Medical Information Mart for Intensive Care III)



---

# Further works 