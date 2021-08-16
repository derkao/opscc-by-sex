*TABLE 2 – HPV POSITIVE*
*TABLE 2 – HPV POSITIVE*
*TABLE 2 – HPV POSITIVE*

clear

use "/Volumes/File Storage/Research/data/seer18 hpv/2010-2016/seerhpv2010-2016_vars_nccn.dta"
	*41,248 obs
	
keep if site_cat == 1
drop if inlist(clinicalstg_8, 0, 710, .)
drop if scc == .
keep if hpv == 1
gen died_hnc = 1 if died == 1 & cod == 1
	*10,210 obs = P16+ OPC COHORT

*all stages
tab rectrt_nccn sex, col chi2 missing 	
	
*stage I
tab trt sex if clinicalstg_8 == 100, col chi2 missing
tab rectrt_nccn sex if clinicalstg_8 == 100, col chi2 missing

*stage II
tab trt sex if clinicalstg_8 == 300, col chi2 missing
tab rectrt_nccn sex if clinicalstg_8 == 300, col chi2 missing

*stage III
tab trt sex if clinicalstg_8 == 500, col chi2 missing
tab rectrt_nccn sex if clinicalstg_8 == 500, col chi2 missing

*stage IV
tab trt sex if clinicalstg_8 == 700, col chi2 missing
tab rectrt_nccn sex if clinicalstg_8 == 700, col chi2 missing


*TABLE 2 – HPV NEGATIVE*
*TABLE 2 – HPV NEGATIVE*
*TABLE 2 – HPV NEGATIVE*

clear

use "/Volumes/File Storage/Research/data/seer18 hpv/2010-2016/seerhpv2010-2016_vars_nccn.dta"
	*41,248 obs
	
keep if site_cat == 1
drop if inlist(clinicalstg_8, 0, 710, .)
drop if scc == .
keep if hpv == 0
gen died_hnc = 1 if died == 1 & cod == 1
	*3,973 obs = P16- OPC COHORT

*all stages
tab rectrt_nccn sex, col chi2 missing 

*stage I
tab trt sex if clinicalstg_8 == 100, col chi2 missing
tab rectrt_nccn sex if clinicalstg_8 == 100, col chi2 missing

*stage II
tab trt sex if clinicalstg_8 == 300, col chi2 missing
tab rectrt_nccn sex if clinicalstg_8 == 300, col chi2 missing

*stage III
tab trt sex if clinicalstg_8 == 500, col chi2 missing
tab rectrt_nccn sex if clinicalstg_8 == 500, col chi2 missing

*stage IV
tab trt sex if clinicalstg_8 > 700, col chi2 missing
tab rectrt_nccn sex if clinicalstg_8 > 700, col chi2 missing
