*TABLE 3 – HPV POSITIVE*
*TABLE 3 – HPV POSITIVE*
*TABLE 3 – HPV POSITIVE*

clear

use "/Volumes/File Storage/Research/data/seer18 hpv/2010-2016/seerhpv2010-2016_vars_nccn.dta"
	*41,248 obs
	
keep if site_cat == 1
drop if inlist(clinicalstg_8, 0, 710, .)
drop if scc == .
keep if hpv == 1
gen died_hnc = 1 if died == 1 & cod == 1
	*10,210 obs = P16+ OPC COHORT
	
*OS
stset SURVIVAL_MONTHS died

*HNCSS
stset SURVIVAL_MONTHS died_hnc

*unadjusted
	stcox i.sex
	stcox i.sex if rectrt_nccn == 1

*all
	stci, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007
		*sts graph, by(sex)
		
	stci if rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if rectrt_nccn == 1
		*sts graph if rectrt_nccn == 1, by(sex)
	
*stage I
	stci if clinicalstg_8 == 100, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 100

	stci if clinicalstg_8 == 100 & rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 100 & rectrt_nccn == 1

*stage II
	stci if clinicalstg_8 == 300, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 300

	stci if clinicalstg_8 == 300 & rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 300 & rectrt_nccn == 1
	
*stage III
	stci if clinicalstg_8 == 500, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 500

	stci if clinicalstg_8 == 500 & rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 500 & rectrt_nccn == 1
	
*stage IV
	stci if clinicalstg_8 == 700, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 700

	stci if clinicalstg_8 == 700 & rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 700 & rectrt_nccn == 1

	
	
*TABLE 3 – HPV NEGATIVE*
*TABLE 3 – HPV NEGATIVE*
*TABLE 3 – HPV NEGATIVE*

clear

use "/Volumes/File Storage/Research/data/seer18 hpv/2010-2016/seerhpv2010-2016_vars_nccn.dta"
	*41,248 obs
	
keep if site_cat == 1
drop if inlist(clinicalstg_8, 0, 710, .)
drop if scc == .
keep if hpv == 0
gen died_hnc = 1 if died == 1 & cod == 1
	*3,973 obs = P16- OPC COHORT
	
*OS
stset SURVIVAL_MONTHS died

*HNCSS
stset SURVIVAL_MONTHS died_hnc

*unadjusted
	stcox i.sex
	stcox i.sex if rectrt_nccn == 1
	
*all
	stci, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007
		*sts graph, by(sex)
	
	stci if rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if rectrt_nccn == 1
		*sts graph if rectrt_nccn == 1, by(sex)
	
*stage I
	stci if clinicalstg_8 == 100, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 100

	stci if clinicalstg_8 == 100 & rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 100 & rectrt_nccn == 1

*stage II
	stci if clinicalstg_8 == 300, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 300

	stci if clinicalstg_8 == 300 & rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 300 & rectrt_nccn == 1
	
*stage III
	stci if clinicalstg_8 == 500, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 500

	stci if clinicalstg_8 == 500 & rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 500 & rectrt_nccn == 1
	
*stage IVA
	stci if clinicalstg_8 == 720, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 720

	stci if clinicalstg_8 == 720 & rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 720 & rectrt_nccn == 1
	
*stage IVB
	stci if clinicalstg_8 == 730, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 730

	stci if clinicalstg_8 == 730 & rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 730 & rectrt_nccn == 1
	
*stage IVC
	stci if clinicalstg_8 == 740, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 740

	stci if clinicalstg_8 == 740 & rectrt_nccn == 1, by(sex)
	stcox i.sex i.race_cat age_cat i.clinicalstg_8 i.trt MEDIANHOUSEHOLDINCOMEINTENSACS ///
	V9THGRADEEDUCATIONACS2013_2017 VHIGHSCHOOLEDUCATIONACS2013201 VATLEASTBACHELORSDEGREEACS2013 ///
	i.INSURANCE_RECODE_2007 if clinicalstg_8 == 740 & rectrt_nccn == 1
	

*TRIO POSTER*
*TRIO POSTER*
*TRIO POSTER*

*hpv positive
clear

use "/Volumes/File Storage/Research/data/seer18 hpv/2010-2016/seerhpv2010-2016_vars_nccn.dta"
	*41,248 obs
	
keep if site_cat == 1
drop if inlist(clinicalstg_8, 0, 710, .)
drop if scc == .
keep if hpv == 1
gen died_hnc = 1 if died == 1 & cod == 1
	*10,210 obs = P16+ OPC COHORT
	
*OS
*stset SURVIVAL_MONTHS died

*HNCSS
stset SURVIVAL_MONTHS died_hnc

*OS hpv positive graph
#delimit;
sts graph, by(sex)
	title ("Overall Survival for HPV Positive Cases", color(gs0))
	xlabel(0(20)83)
	plot1opts(lc(gs0))
	plot2opts(lc(gs8))
	legend(off)
	tmax(83)
	graphregion(fcolor(white))
	ytitle (Overall Suvival (Cumulative Probability), margin(small))
	xtitle (Time (Months), margin(small))
	text(0.65 70 "Men", size(medium) color(gs0))
	text(0.85 70 "Women", size(medium) color(gs8))
	text(0.3 20 "p = 0.72", size(medium) color(gs0));

*HNCSS hpv positive graph
#delimit;
sts graph, by(sex)
	title ("Cancer-Specific Survival for HPV Positive Cases", color(gs0))
	xlabel(0(20)83)
	plot1opts(lc(gs0))
	plot2opts(lc(gs8))
	legend(off)
	tmax(83)
	graphregion(fcolor(white))
	ytitle (Overall Suvival (Cumulative Probability), margin(small))
	xtitle (Time (Months), margin(small))
	text(0.97 70 "Men", size(medium) color(gs0))
	text(0.77 70 "Women", size(medium) color(gs8))
	text(0.3 20 "p = 0.11", size(medium) color(gs0));	

	
*hpv negative	
clear

use "/Volumes/File Storage/Research/data/seer18 hpv/2010-2016/seerhpv2010-2016_vars_nccn.dta"
	*41,248 obs
	
keep if site_cat == 1
drop if inlist(clinicalstg_8, 0, 710, .)
drop if scc == .
keep if hpv == 0
gen died_hnc = 1 if died == 1 & cod == 1
	*3,973 obs = P16- OPC COHORT
	
*OS
*stset SURVIVAL_MONTHS died

*HNCSS
stset SURVIVAL_MONTHS died_hnc
	
*OS hpv negative graph
#delimit;
sts graph, by(sex)
	title ("Overall Survival for HPV Negative Cases", color(gs0))
	xlabel(0(20)83)
	plot1opts(lc(gs0))
	plot2opts(lc(gs8))
	legend(off)
	tmax(83)
	graphregion(fcolor(white))
	ytitle (Overall Suvival (Cumulative Probability), margin(small))
	xtitle (Time (Months), margin(small))
	text(0.65 50 "Men", size(medium) color(gs0))
	text(0.35 50 "Women", size(medium) color(gs8))
	text(0.85 70 "p = 0.02", size(medium) color(gs0));
	
*HNCSS hpv negative graph
#delimit;
sts graph, by(sex)
	title ("Cancer-Specific Survival for HPV Negative Cases", color(gs0))
	xlabel(0(20)83)
	plot1opts(lc(gs0))
	plot2opts(lc(gs8))
	legend(off)
	tmax(83)
	graphregion(fcolor(white))
	ytitle (Overall Suvival (Cumulative Probability), margin(small))
	xtitle (Time (Months), margin(small))
	text(0.85 50 "Men", size(medium) color(gs0))
	text(0.55 50 "Women", size(medium) color(gs8))
	text(0.3 20 "p = 0.06", size(medium) color(gs0));
	









