Title: Explore Real-World hospital Electronic Health Records data with ggehr

<span style = 'color:red'>(15 min)</span>

### Abstract (150)

Real-World Data (RWD) like Electronic Health Records (EHR) is crucial for understanding drug usage and various treatments and generating Real-World Evidence (RWE). Patients undergo treatments (drugs, procedures) at various times during their hospital stays, generating a mix of temporal and static information. High quality data on why and how drugs (such as antibiotics) are prescribed and used allows us to use drugs more efficiently and safely; yet the data in EHR systems are always messy and prone to error for various reasons. Analysts spend significant amount of time to sit together with clinicians to identify and understand abnormal records, and unfortunately this process is challenging to automate. 

I will introduce a new R package - ggehr, which is the extension of ggplot specifically developed for visual exploration of EHR data. The package facilitates visualization of temporal events (drug, procedure, operation) in combination with static information (demographics, admission info) at the patient level such that analysts can have an overview of the entire patient journey in one graph. I will also demonstrate how additional information (e.g. why this drugs is prescribed at time x) can be added interactively to enrich the visualization, making it easier to identify abnormal records and carry out quality control.

