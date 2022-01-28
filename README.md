# predicter
A Tool to Predict the Time Needed to Conduct a Systematic Review or Systematic Map

This package contains the functions behind the https://predicter.github.io ShinyApp tool to estimate the time required (in full time 
equivalent days) to conduct a rigorous systematic review (in line with international standards according to the Collaboration 
for Environmental Evidence, www.environmentalevidence.org; the Campbell Collaboration, www.campbellcollaboration.org; and 
Cochrane, www.cochrane.org). 

The package contains a suite of smaller functions to calculate time requirements of each stage of the review process and the 
number of records retained following the previous step. In addition, the main 'predicter' function combines these estimates 
into a single estimate for the predicted time requirements of a particular review project in days.

Defaul values are provided based on an empirical study by Neal R Haddaway and Martin J Westgate (2018) 
https://doi.org/10.1111/cobi.13231.
