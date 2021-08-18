*COMPETING RISK – HPV POSITIVE*
*COMPETING RISK – HPV POSITIVE*
*COMPETING RISK – HPV POSITIVE*

clear

use "/Volumes/File Storage/Research/data/seer18 hpv/2010-2016/seerhpv2010-2016_vars_nccn.dta"
	*41,248 obs
	
keep if site_cat == 1
drop if inlist(clinicalstg_8, 0, 710, .)
drop if scc == .
keep if hpv == 1
gen died_hnc = 1 if died == 1 & cod == 1
	*10,210 obs = P16+ OPC COHORT
	
gen death_type = 0 if died == .
	replace death_type = 1 if died_hnc == 1
	replace death_type = 2 if died == 1 & died_hnc == .
	
stset SURVIVAL_MONTHS, failure(death_type == 1)

*unadjusted
stcrreg i.sex, compete(death_type == 2)

stcrreg i.sex if rectrt_nccn == 1, compete(death_type == 2)

*adjusted
stcrreg i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007, compete(death_type == 2)
	
stcrreg i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if rectrt_nccn == 1, compete(death_type == 2)



*COMPETING RISK – HPV NEGATIVE*
*COMPETING RISK – HPV NEGATIVE*
*COMPETING RISK – HPV NEGATIVE*

clear

use "/Volumes/File Storage/Research/data/seer18 hpv/2010-2016/seerhpv2010-2016_vars_nccn.dta"
	*41,248 obs
	
keep if site_cat == 1
drop if inlist(clinicalstg_8, 0, 710, .)
drop if scc == .
keep if hpv == 0
gen died_hnc = 1 if died == 1 & cod == 1
	*3,973 obs = P16- OPC COHORT
	
gen death_type = 0 if died == .
	replace death_type = 1 if died_hnc == 1
	replace death_type = 2 if died == 1 & died_hnc == .
	
stset SURVIVAL_MONTHS, failure(death_type == 1)

*unadjusted
stcrreg i.sex, compete(death_type == 2)

stcrreg i.sex if rectrt_nccn == 1, compete(death_type == 2)

*adjusted
stcrreg i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007, compete(death_type == 2)
	
stcrreg i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if rectrt_nccn == 1, compete(death_type == 2)
