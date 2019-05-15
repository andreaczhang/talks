> Keep in mind: 
>
> - Need examples: the audience are statisticians. They speak a different language.
> - use example! 

### <span style = 'color:royalblue'>Abstract</span>

Electronic health records are the routinely generated data by machines and medical staff from medical institutes, and contain important information regarding patient stays such as demographics, medications and diagnoses, vitals and so on. Despite of being multi-modal  (numeric measurements, free texts, images), EHR data is challenging for traditional statistical methods to analyse also for its irregularity: measurements for different features are sampled at different frequency over time, and total measurements can vary greatly across different patients. 

This talk will introduce feature learning and its application in healthcare research and EHR in particular. We will take an open dataset, the MIMIC III database and investigate how different feature learning methods (Autoencoder and dynamic time warping) can be used to tackle the problem of irregularity. 





### Outline: (25 min)

1. EHR data and challenges (8min)  <span style = 'color:royalblue'>To read</span>
   - EHR data 
   - open data: MIMIC, eICU
   - Challenges 
2. feature learning and application in medicine (5min) <span style = 'color:royalblue'>To read</span>
   - Feature/ representation learning: aim, methods, importance, difference from statistics modelling  
   - application in medicine <span style = 'color:tomato'>(why the audience should care about it)</span>
   - application in EHR
3. detailed description of target dataset (1min)
4. 2 representation methods for **phenotyping** and classification
   - deep methods (3 min)
   - our methods (8 min)



#### Take home message: 

- EHR data is challenging 
- representation learning is important



## Topic 1: EHR data and the challenge (8 min)



### EHR data



### open EHR data



### challenges 

… so there are these challenges, what can we do? 

Natural solution:





## Topic 2: feature learning and application in medicine (5min)

### Feature/ representation learning

aim, methods, importance, difference from statistics modelling

key questitons to address: 

- what is it 
- what makes a good representation
- how to do it



What is an example of a representation?

- One-hot representaion 

- PCA: one of the earliest linear feature learning algorithm.  <span style = 'color:royalblue'>Important! try to relate it to why it is widely used, to use principle components in regression</span>

Zhong2016, bengio2013

### in medicine (not only EHR)





### EHR feature learning

now go back to look at our data: what can we use? NLP is one, but that is not what we will focus on. 

<span style = 'color:coral'>maybe a primer on tensor decomposition? and its uses in ML? Probably a separate section.</span>

introduction of this field (maybe with the help of this thesis I have found)









## Topic 3: detailed description of target dataset (1min)



# 



## Topic 4: 2 representation methods and applications in phenotyping and classification



### Deep methods (3 min)



### Our methods (8 min)











# Additional thoughts 

- federated / collaborative / privacy preserving learning 

- Interpretability / causality 