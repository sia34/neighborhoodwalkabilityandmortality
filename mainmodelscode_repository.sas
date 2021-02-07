

/*******************************************************************************************************************/
/***************************Main Code Main Models Neighborhood Walkability & Mortality******************************/
/*******************************************************************************************************************/

/**********************************Cox Models with Robust Sandwich Estimators***************************************/

*All-cause mortality;

*Median;
proc phreg data=CWMB covs(aggregate);
 	class median50(ref="1") racecat(ref = "NH Caucasian") alcohol(ref="1") educ (ref="<=HS") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0") ;
	model followup_y*censoredCW(0)=median50 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2;
run;
*Tertile;
proc phreg data=CWMB covs(aggregate);
 	class tertile(ref="1") racecat(ref = "NH Caucasian") alcohol(ref="1") educ (ref="<=HS") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*censoredCW(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2;
run;
proc phreg data=CWMB covs(aggregate);
 	class  racecat(ref = "NH Caucasian") alcohol(ref="1") educ (ref="<=HS") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*censoredCW(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2;
run;
*Continuous walkability sd;
proc phreg data=CWMB covs(aggregate);
 	class racecat(ref = "NH Caucasian") alcohol(ref="1") educ (ref="<=HS") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*censoredCW(0)=walk_sd1 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2;
run;

*Obesity-related mortality;

*Median;
proc phreg data=CWMb covs(aggregate);
 	class median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*Obesity_NCR(0)=median50 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2;
run;
*Tertile;
proc phreg data=CWMb covs(aggregate);
 	class tertile(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0") ;
	model followup_y*Obesity_NCR(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2;
run;
proc phreg data=CWMb covs(aggregate);
 	class racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0") ;
	model followup_y*Obesity_NCR(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2;
run;
*Continuous walkability sd;
proc phreg data=CWMb covs(aggregate);
 	class  racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*Obesity_NCR(0)=walk_sd1 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
    id county2;
run;

*Cardiometabolic mortality;

*Median;
proc phreg data=CWMb covs(aggregate);
 	class median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*CM_NCR(0)=median50 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2;
run;
*Tertile;
proc phreg data=CWMb  covs(aggregate);
 	class tertile(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*CM_NCR(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2;
run;
proc phreg data=CWMb  covs(aggregate);
 	class  racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*CM_NCR(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl;
	id county2; 
run;
*Continuous walkability sd;
proc phreg data=CWMb covs(aggregate);
 	class  racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*CM_NCR(0)=walk_sd1 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2; 
run;

*Obesity-related cancer mortality;

*Median;
proc phreg data=CWMb covs(aggregate);
 	class median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*OCa_NCR(0)=median50 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2; 
run;
*Tertile;
proc phreg data=CWMb covs(aggregate);
 	class tertile(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*OCa_NCR(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2;
run;
proc phreg data=CWMb  covs(aggregate);
 	class racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0") ;
	model followup_y*OCa_NCR(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	id county2;
run;
*Continuous walkability sd;
proc phreg data=CWMb covs(aggregate);
 	class  racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*OCa_NCR(0)=walk_sd1 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl;
	id county2; 
run;


/**************************************Fine and Gray Competing Risk Models*****************************************/

*Obesity-related disease models;

proc format ;
	value cause1ft 0='censored' 1='Obes' 2='NObes';
run;
data CWMb;
	set CWMb;
	if Obesity^="Alive" & Obesity='Obrel' then cause1=1;
	else if Obesity^="Alive" & Obesity='Notob' then cause1=2;
	else if Obesity="Alive" then cause1=0;
	format cause1 cause1ft.;
run;
proc freq data=CWMb;
	tables Obesity cause1 Categ1;
run;
proc phreg data=CWMb;
 	class median50(ref="1") racecat(ref = "NH Caucasian") alcohol(ref="1") educ(ref="<=HS") smoke(ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0") ;
	model followup_y*cause1(0)=median50 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run;
proc phreg data=CWMb;
 	class tertile(ref="1") racecat(ref = "NH Caucasian") alcohol(ref="1") educ(ref="<=HS") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*cause1(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run;
proc phreg data=CWMb;
 	class racecat(ref = "NH Caucasian") alcohol(ref="1") educ(ref="<=HS") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*cause1(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run;
proc phreg data=CWMb;
 	class  racecat(ref = "NH Caucasian") alcohol(ref="1") educ(ref="<=HS") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*cause1(0)=walk_sd1 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run;

*Cardiometabolic death models ;
 
proc format;
	value cause2ft 0='censored' 1='Cardiomet' 2='Noncardiomet';
run;
data CWMb;
	set CWMb;
	if CM^="Ali" & CM='CMD' then cause2=1;
	else if CM^="Ali" & CM='NCM' then cause2=2;
	else if CM="Ali" then cause2=0;
	format cause2 cause2ft.;
run;
proc phreg data=CWMb;
 	class median50(ref="1") racecat(ref = "NH Caucasian") alcohol(ref="1") educ(ref="<=HS") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*cause2(0)=median50 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run;
proc phreg data=CWMb;
 	class tertile(ref="1") racecat(ref = "NH Caucasian") alcohol(ref="1") educ(ref="<=HS") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*cause2(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run;
proc phreg data=CWMb;
 	class racecat(ref = "NH Caucasian") alcohol(ref="1") educ(ref="<=HS") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0");
	model followup_y*cause2(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run;
proc phreg data=CWMb;
 	class  racecat(ref = "NH Caucasian") alcohol(ref="1") educ(ref="<=HS") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0") ;
	model followup_y*cause2(0)=walk_sd1 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run;

*Obesity-related Cancer Mortality;

proc format ;
	value cause3ft 0='censored' 1='Cancer' 2='NoCancer';
run;
data CWMB;
	set CWMB;
	if OCancer^="Al" & OCancer='Ca' then cause3=1;
	else if OCancer^="Al" & OCancer='No' then cause3=2;
	else if OCancer="Al" then cause3=0;
	format cause3 cause3ft.;
run;
proc phreg data=CWMb;
 	class median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0") ;
	model followup_y*cause3(0)=median50 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run; 
proc phreg data=CWMb;
 	class tertile(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0") ;
	model followup_y*cause3(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run; 
proc phreg data=CWMb;
 	class racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0") ;
	model followup_y*cause3(0)=tertile age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run; 
proc phreg data=CWMb;
 	class racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0") ;
	model followup_y*cause3(0)=walk_sd1 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/eventcode=1 RL=WALD; 
run; 


/*****************************************Propensity Score Matching****************************************************/

data cwmb1;
	set cwmb1;
	if D_cumu6="Not Mov" then res=0;
	else if D_cumu6="Moved 6" then res=1;
run;

ods graphics on; 
proc psmatch data=cwmb1  region=cs; 
class  raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy res  median50m ;
psmodel median50m(Treated='1') = age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy res Prcnt_black fpl_ratio ;
match  METHOD=GREEDY(k=1)  distance=lps caliper=0.5 ;
assess lps allcov / plots=(barchart boxplot); 
output out(obs=match)=Outgs lps=_Lps matchid=_MatchID; 
run;

proc phreg data=Outgs covs(aggregate);
 	class  median50(ref="1")  racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref  ;
	model followup_y*censoredCW(0)=median50  age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	weight _PS_;
id county2;
run;

proc phreg data=Outgs covs(aggregate);
 	class  median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref  ;
	model followup_y*Obesity_NCR(0)=median50 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	weight _PS_;
 	id county2;
run;

proc phreg data=Outgs covs(aggregate);
 	class  median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref  ;
	model followup_y*CM_NCR(0)=median50 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	weight _PS_;
 	id county2;
run;

proc phreg data=Outgs covs(aggregate);
 	class  median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref  ;
	model followup_y*OCa_NCR(0)=median50 age racecat educ smoke MStatus alcohol Prcnt_black fpl_ratio FTPever_baseline/rl; 
	weight _PS_;
 	id county2;
run;


/*******************************************Spiegelman Mediation Analyses********************************************/

*Obesity-related cancer mortality;

*baseline BMI; 

%mediate(data=cwmb, exposure=median50m, intermed=baseline_bmi, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=OCa_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*average bmi;

%mediate(data=cwmb, exposure=median50m, intermed=bmiavg, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=OCa_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*walking;

%mediate(data=outwalk, exposure=median50m, intermed=C_walkingMEThours, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=OCa_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*diabetes;

%mediate(data=diabetes, exposure=median50m, intermed=everdiab1, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=OCa_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline  alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*combined mediators;

%mediate(data=outwalk, exposure=median50m, intermed=C_walkingMEThours baseline_BMI , id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=OCa_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=diabwalk, exposure=median50m, intermed=C_walkingMEThours baseline_BMI everdiab, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=OCa_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=diabwalk, exposure=median50m, intermed=C_walkingMEThours baseline_BMI everdiab1, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=OCa_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=diabwalk, exposure=median50m, intermed=C_walkingMEThours bmiavg everdiab, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=OCa_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );
	   
%mediate(data=diabwalk, exposure=median50m, intermed=C_walkingMEThours bmiavg everdiab1, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=OCa_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=outwalk, exposure=median50m, intermed=C_walkingMEThours bmiavg , id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=OCa_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

/*Obesity related mortality*/

*baseline BMI; 
		 
%mediate(data=cwmb, exposure=median50m, intermed=baseline_bmi, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=Obesity_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*average bmi;

%mediate(data=cwmb, exposure=median50m, intermed=bmiavg, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=Obesity_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*walking;

%mediate(data=outwalk, exposure=median50m, intermed=C_walkingMEThours,  id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=Obesity_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*diabetes;

%mediate(data=diabetes, exposure=median50m, intermed=everdiab1,  id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=Obesity_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline  alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*all combined mediators;

%mediate(data=outwalk, exposure=median50m, intermed=C_walkingMEThours baseline_BMI , id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=Obesity_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=diabwalk, exposure=median50m, intermed=C_walkingMEThours baseline_BMI everdiab,  id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=Obesity_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=diabwalk, exposure=median50m, intermed=C_walkingMEThours baseline_BMI everdiab1,  id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=Obesity_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=diabwalk, exposure=median50m, intermed=C_walkingMEThours bmiavg everdiab, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=Obesity_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );
%mediate(data=diabwalk, exposure=median50m, intermed=C_walkingMEThours bmiavg everdiab1, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=Obesity_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=outwalk, exposure=median50m, intermed=C_walkingMEThours bmiavg , id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=Obesity_NCR,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

/*all cause mortality*/

*baseline BMI; 
	
%mediate(data=cwmb, exposure=median50m, intermed=baseline_bmi, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=censoredCW,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*average bmi;

%mediate(data=cwmb, exposure=median50m, intermed=bmiavg, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=censoredCW,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*walking;

%mediate(data=outwalk, exposure=median50m, intermed=C_walkingMEThours, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=censoredCW,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*diabetes;

%mediate(data=diabetes, exposure=median50m, intermed=everdiab1, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=censoredCW,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline  alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

*all combined mediators;

%mediate(data=outwalk, exposure=median50m, intermed=C_walkingMEThours baseline_BMI , id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=censoredCW,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=outwalk, exposure=median50m, intermed=C_walkingMEThours baseline_BMI everdiab,id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=censoredCW,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );
%mediate(data=diabwalk, exposure=median50m, intermed=C_walkingMEThours baseline_BMI everdiab1,id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=censoredCW,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=outwalk, exposure=median50m, intermed=C_walkingMEThours bmiavg everdiab, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=censoredCW,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=diabwalk, exposure=median50m, intermed=C_walkingMEThours bmiavg everdiab1, id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=censoredCW,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );

%mediate(data=outwalk, exposure=median50m, intermed=C_walkingMEThours bmiavg , id=county2, surv=T, procopt=covsandwich(aggregate),
time=followup_y, event=censoredCW,
intmiss=f,
covars= age raceH_dummy raceB_dummy raceO_dummy raceU_dummy educG_dummy educO_dummy educU_dummy smkS_dummy smkU_dummy 
           MS_dummy FTPever_baseline alcohol_dummy  alcoholU_dummy Prcnt_black fpl_ratio );


/*****************************Interaction Models***************************/

/*******************Interaction models********************/

data cwmb;
	set cwmb;
	if age<=51 then agecat=0;
	else if age >51 then agecat=1;
run;
data cwmb;
	set cwmb;
	median50_agecat=median50*agecat;
run;
data cwmb;
	set cwmb;
	median50_age=median50*age;
run;
data cwmb;
	set cwmb;
	if BMI<30 then bmicat=0;
	else if BMI >=30 then bmicat=1;
run;
data cwmb;
	set cwmb;
	median50_bmicat=median50*bmicat;
run;
data cwmb;
	set cwmb;
	median50_parity=median50*FTPever_baseline;
run;
data smokingstatus;
	set smokingstatus;
	if smokemiss="Never Smoker" then smkcat=0;
	else if smokemiss="Ever Smoker" then smkcat=1;
run;
proc freq data=smokingstatus;
	tables smokemiss smkcat;
run;
data smokingstatus;
	set smokingstatus;
	walk_sd1_smkcat=walk_sd1*smkcat;
	tertile_smkcat=tertile*smkcat;
	median50_smkcat=median50*smkcat;
run;
data cwmb;
	set cwmb;
	walk_sd1_mstatus=walk_sd1*MStatus;
	tertile_mstatus=tertile*MStatus;
	median50_mstatus=median50*MStatus;
run;
data dietdata;
	set dietdata;
	if DASH<=24 then DASHcat=0;
	else if DASH >24 then DASHcat=1;
run;
data dietdata;
	set dietdata;
	median50_DASHcat=median50*DASHcat;
run;

*interaction all-cause mortality;

proc phreg data=cwmb covs(aggregate);
 	class   median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*censoredCW(0)=median50 age median50_age   racecat educ smoke MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ; 
	id county2;
run;
proc phreg data=cwmb covs(aggregate);
 	class median50(ref="1")  bmicat(ref="0") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*censoredCW(0)=median50 bmicat median50_bmicat age  racecat educ smoke MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ; 
	id county2;
run;
proc phreg data=smokingstatus covs(aggregate);
 	class  median50(ref="1") smkcat(ref="0") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1")  MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*censoredCW(0)=median50 smkcat median50_smkcat age  racecat educ  MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ; 
	id county2;
run;
proc phreg data=cwmb covs(aggregate);
 	class   median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*censoredCW(0)=median50 MStatus median50_mstatus age  racecat educ smoke  alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ; 
	id county2;
run;
proc phreg data=cwmb covs(aggregate);
 	class   median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*censoredCW(0)=median50   median50_parity MStatus age  racecat educ smoke  alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ;
	id county2; 
run;
proc phreg data=dietdata covs(aggregate);
 	class  median50(ref="1") DASHcat(ref="0") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1")  FTPever_baseline(ref="0")/param=ref ;
	model followup_y*censoredCW(0)=median50 DASHcat median50_DASHcat  age racecat educ smoke MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ; 
	id county2;
run;

*interaction obesity related mortality;

proc phreg data=cwmb covs(aggregate);
 	class   median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*Obesity_NCR(0)=median50 age median50_age   racecat educ smoke MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ;
	id county2; 
run;
proc phreg data=cwmb covs(aggregate);
 	class median50(ref="1")  bmicat(ref="0") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*Obesity_NCR(0)=median50 bmicat median50_bmicat age  racecat educ smoke MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ;
	id county2; 
run;
proc phreg data=smokingstatus covs(aggregate);
 	class  median50(ref="1") smkcat(ref="0") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1")  MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*Obesity_NCR(0)=median50 smkcat median50_smkcat age  racecat educ  MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ;
	id county2; 
run;
proc phreg data=cwmb covs(aggregate);
 	class   median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*Obesity_NCR(0)=median50 MStatus median50_mstatus age  racecat educ smoke  alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ;
	id county2; 
run;
proc phreg data=cwmb covs(aggregate);
 	class   median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*Obesity_NCR(0)=median50   median50_parity MStatus age  racecat educ smoke  alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ; 
	id county2;
run;
proc phreg data=dietdata covs(aggregate);
 	class  median50(ref="1") DASHcat(ref="0") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1")  FTPever_baseline(ref="0")/param=ref ;
	model followup_y*Obesity_NCR(0)=median50 DASHcat median50_DASHcat  age racecat educ smoke MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ; 
	id county2;
run;

*interaction  obesity-related cancer mortality;

proc phreg data=cwmb covs(aggregate);
 	class   median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*OCa_NCR(0)=median50 age median50_age   racecat educ smoke MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ; 
	id county2;
run;
proc phreg data=cwmb covs(aggregate);
 	class median50(ref="1")  bmicat(ref="0") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*OCa_NCR(0)=median50 bmicat median50_bmicat age  racecat educ smoke MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ;
	id county2; 
run;
proc phreg data=smokingstatus covs(aggregate);
 	class  median50(ref="1") smkcat(ref="0") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1")  MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*OCa_NCR(0)=median50 smkcat median50_smkcat age  racecat educ  MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ; 
	id county2;
run;
proc phreg data=cwmb covs(aggregate);
 	class   median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*OCa_NCR(0)=median50 MStatus median50_mstatus age  racecat educ smoke  alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ; 
	id county2;
run;
proc phreg data=cwmb covs(aggregate);
 	class   median50(ref="1") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1") FTPever_baseline(ref="0")/param=ref ;
	model followup_y*OCa_NCR(0)=median50   median50_parity MStatus age  racecat educ smoke  alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ; 
	id county2;
run;
proc phreg data=dietdata covs(aggregate);
 	class  median50(ref="1") DASHcat(ref="0") racecat(ref = "NH Caucasian") educ (ref="<=HS") alcohol(ref="1") smoke (ref="Never Smoker") MStatus(ref="1")  FTPever_baseline(ref="0")/param=ref ;
	model followup_y*OCa_NCR(0)=median50 DASHcat median50_DASHcat  age racecat educ smoke MStatus alcohol  Prcnt_black fpl_ratio FTPever_baseline/rl ;
	id county2; 
run;
