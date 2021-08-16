*TABLE 1 – HPV POSITIVE*
*TABLE 1 – HPV POSITIVE*
*TABLE 1 – HPV POSITIVE*

clear

use "/Volumes/File Storage/Research/data/seer18 hpv/2010-2016/seerhpv2010-2016_vars_nccn.dta"
	*41,248 obs
	
keep if site_cat == 1
drop if inlist(clinicalstg_8, 0, 710, .)
drop if scc == .
keep if hpv == 1
gen died_hnc = 1 if died == 1 & cod == 1
	*10,210 obs = P16+ OPC COHORT

*n
tab sex, missing

*age
summ age_cat if sex == 1, detail
summ age_cat if sex == 2, detail
	ttest age_cat, by(sex)
	
*race/ethnicity
tab race_cat sex, col chi2 missing

*year of dx
tab YEAR_OF_DIAGNOSIS sex, col chi2 missing

*stage at dx
tab clinicalstg_8 sex, col chi2 missing

*clinical T
tab clinicalT_8 sex, col chi2 missing

*clinical N
tab clinicalN_8 sex, col chi2 missing

*household income
summ MEDIANHOUSEHOLDINCOMEINTENSACS if sex == 1, detail
summ MEDIANHOUSEHOLDINCOMEINTENSACS if sex == 2, detail
	ttest MEDIANHOUSEHOLDINCOMEINTENSACS, by(sex)
	
*education
summ V9THGRADEEDUCATIONACS2013_2017 if sex == 1, detail
summ V9THGRADEEDUCATIONACS2013_2017 if sex == 2, detail
	ttest V9THGRADEEDUCATIONACS2013_2017, by(sex)
	
summ VHIGHSCHOOLEDUCATIONACS2013201 if sex == 1, detail
summ VHIGHSCHOOLEDUCATIONACS2013201 if sex == 2, detail
	ttest VHIGHSCHOOLEDUCATIONACS2013201, by(sex)
	
summ VATLEASTBACHELORSDEGREEACS2013 if sex == 1, detail
summ VATLEASTBACHELORSDEGREEACS2013 if sex == 2, detail
	ttest VATLEASTBACHELORSDEGREEACS2013, by(sex)
	
*insurance
tab INSURANCE_RECODE_2007 sex, col chi2 missing

*marital status
gen maritalstatus = .
	replace maritalstatus = 1 if inlist(MARITAL_STATUS_AT_DIAGNOSIS, 1, 3, 4, 5, 6)
	replace maritalstatus = 2 if MARITAL_STATUS_AT_DIAGNOSIS == 2
	replace maritalstatus = 9 if MARITAL_STATUS_AT_DIAGNOSIS == 9
		la val maritalstatus MARITAL_STATUS_AT_DIAGNOSISF
		
tab maritalstatus sex, col chi2 missing



*TABLE 1 – HPV NEGATIVE*
*TABLE 1 – HPV NEGATIVE*
*TABLE 1 – HPV NEGATIVE*

clear

use "/Volumes/File Storage/Research/data/seer18 hpv/2010-2016/seerhpv2010-2016_vars_nccn.dta"
	*41,248 obs
	
keep if site_cat == 1
drop if inlist(clinicalstg_8, 0, 710, .)
drop if scc == .
keep if hpv == 0
gen died_hnc = 1 if died == 1 & cod == 1
	*3,973 obs = P16- OPC COHORT

*n
tab sex, missing

*age
summ age_cat if sex == 1, detail
summ age_cat if sex == 2, detail
	ttest age_cat, by(sex)
	
*race/ethnicity
tab race_cat sex, col chi2 missing

*year of dx
tab YEAR_OF_DIAGNOSIS sex, col chi2 missing

*stage at dx
tab clinicalstg_8 sex, col chi2 missing

*clinical T
tab clinicalT_8 sex, col chi2 missing

*clinical N
tab clinicalN_8 sex, col chi2 missing

*household income
summ MEDIANHOUSEHOLDINCOMEINTENSACS if sex == 1, detail
summ MEDIANHOUSEHOLDINCOMEINTENSACS if sex == 2, detail
	ttest MEDIANHOUSEHOLDINCOMEINTENSACS, by(sex)
	
*education
summ V9THGRADEEDUCATIONACS2013_2017 if sex == 1, detail
summ V9THGRADEEDUCATIONACS2013_2017 if sex == 2, detail
	ttest V9THGRADEEDUCATIONACS2013_2017, by(sex)
	
summ VHIGHSCHOOLEDUCATIONACS2013201 if sex == 1, detail
summ VHIGHSCHOOLEDUCATIONACS2013201 if sex == 2, detail
	ttest VHIGHSCHOOLEDUCATIONACS2013201, by(sex)
	
summ VATLEASTBACHELORSDEGREEACS2013 if sex == 1, detail
summ VATLEASTBACHELORSDEGREEACS2013 if sex == 2, detail
	ttest VATLEASTBACHELORSDEGREEACS2013, by(sex)
	
*insurance
tab INSURANCE_RECODE_2007 sex, col chi2 missing

*marital status
gen maritalstatus = .
	replace maritalstatus = 1 if inlist(MARITAL_STATUS_AT_DIAGNOSIS, 1, 3, 4, 5, 6)
	replace maritalstatus = 2 if MARITAL_STATUS_AT_DIAGNOSIS == 2
	replace maritalstatus = 9 if MARITAL_STATUS_AT_DIAGNOSIS == 9
		la val maritalstatus MARITAL_STATUS_AT_DIAGNOSISF
		
tab maritalstatus sex, col chi2 missing

