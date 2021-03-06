Instance: WhoCrQuestionnaireCovid19Surveillance
InstanceOf: Questionnaire
Description: "TODO"
Title: "Revised case report form for Confirmed Novel Coronavirus COVID-19"
Usage: #definition

* insert PublisherContext
* name = "WhoCrQuestionnaireCovid19Surveillance"
* version = "2020.2"
* subjectType = #Patient
//* language = "en"

// TODO: review SDC supplemental profiles (http://build.fhir.org/ig/HL7/sdc/intro.html)

* item[0].linkId    = "instruction"
* item[0].text    = "Report to WHO within 48 hours of case identification"
* item[0].type    = #display

* item[1].linkId    = "report_date"
* item[1].text    = "Date of reporting to national health authority:"
* item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.report.date"
* item[1].type    = #date

* item[2].linkId  = "report_country"
* item[2].text    = "Reporting country:"
* item[2].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.report.country"
* item[2].type    = #open-choice
* item[2].answerValueSet    = Canonical(WhoCrValueSetAdmin0)

* item[3].linkId  = "report_test_reason"
* item[3].text    = "Why tested for COVID-19:"
* item[3].code    = http://loinc.org#67098-4 "Reason for test or procedure"
* item[3].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.report.testReason"
* item[3].type    = #open-choice
* item[3].answerValueSet = Canonical(WhoCrValueSetReasonForCovid19Testing)

* item[4].linkId  = "section_patient_info"
* item[4].prefix  = "Section 1"
* item[4].text    = "Patient information"
* item[4].type    = #group

* item[4].item[0].linkId  = "patinfo_ID"
* item[4].item[0].text    = "Unique Case Identifier (used in country):"
* item[4].item[0].type    = #string
* item[4].item[0].code    = $LNC#94659-0
* item[4].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.patientInfo.caseId"

* item[4].item[1].linkId  = "patinfo_ageonset"
* item[4].item[1].text    = "Age (use days if <1 month, months if <1 year):"
* item[4].item[1].type    = #quantity
* item[4].item[1].code    = $LNC#30525-0
* item[4].item[1].extension[0].url = "http://hl7.org/fhir/StructureDefinition/questionnaire-unitValueSet"
* item[4].item[1].extension[0].valueCanonical = Canonical(WhoCrValueSetAgeUnits)
* item[4].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.patientInfo.onsetAge"
// TODO: add min value enforcement via ElementDefinition

* item[4].item[2].linkId  = "patinfo_sex"
* item[4].item[2].text    = "Sex at birth:"
* item[4].item[2].type    = #choice
* item[4].item[2].code    = $LNC#76689-9
* item[4].item[2].answerValueSet = Canonical(WhoCrValueSetSexAtBirth)
* item[4].item[2].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.patientInfo.birthSex"

* item[4].item[3].linkId  = "patinfo_placediagnosed"
* item[4].item[3].text    = "Place where the case was diagnosed:"
* item[4].item[3].type    = #group

* item[4].item[3].item[0].linkId  = "patinfo_idadmin0"
* item[4].item[3].item[0].text    = "Country:"
* item[4].item[3].item[0].type    = #open-choice
* item[4].item[3].item[0].answerValueSet    = Canonical(WhoCrValueSetAdmin0)
* item[4].item[3].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.patientInfo.identified.admin0"

* item[4].item[3].item[0].item[0].linkId  = "patinfo_idadmin1"
* item[4].item[3].item[0].item[0].text    = "Admin Level 1 (province):"
* item[4].item[3].item[0].item[0].type    = #string
* item[4].item[3].item[0].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.patientInfo.identified.admin1"
* item[4].item[3].item[0].item[0].enableWhen[0].question = "patinfo_idadmin0"
* item[4].item[3].item[0].item[0].enableWhen[0].operator = #exists
* item[4].item[3].item[0].item[0].enableWhen[0].answerBoolean = true

* item[4].item[4].linkId  = "patinfo_placereside"
* item[4].item[4].text    = "Case usual place of residency:"
* item[4].item[4].type    = #group

* item[4].item[4].item[0].linkId  = "patinfo_resadmin0"
* item[4].item[4].item[0].text    = "Country:"
* item[4].item[4].item[0].type    = #open-choice
* item[4].item[4].item[0].code    = $LNC#77983-5
* item[4].item[4].item[0].answerValueSet    = Canonical(WhoCrValueSetAdmin0)
* item[4].item[4].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.patientInfo.residence.admin0"

* item[5].linkId  = "section_clinical_status"
* item[5].prefix  = "Section 2"
* item[5].text    = "Clinical Status"
* item[5].type    = #group

* item[5].item[0].linkId  = "Lab_date1"
* item[5].item[0].text    = "Date of first laboratory confirmation test:"
* item[5].item[0].type    = #date
* item[5].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.lab.confirmedDate"

* item[5].item[1].linkId  = "patcourse_asymp"  //TODO: variable name/short label is opposite to meaning of question
* item[5].item[1].text    = "Any symptoms* or signs at time of specimen collection that resulted in first laboratory confirmation?"
* item[5].item[1].type    = #choice
* item[5].item[1].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[5].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.asymptomatic"

* item[5].item[1].item[0].linkId  = "patcourse_dateonset"  
* item[5].item[1].item[0].text    = "Date of onset of symptoms:"
* item[5].item[1].item[0].type    = #date
* item[5].item[1].item[0].code    = $LNC#65222-2
* item[5].item[1].item[0].enableWhen[0].question = "patcourse_asymp"
* item[5].item[1].item[0].enableWhen[0].operator = #=
* item[5].item[1].item[0].enableWhen[0].answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* item[5].item[1].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.onsetDate"

* item[5].item[2].linkId  = "section_comorbidity"
* item[5].item[2].text    = "Underlying conditions and comorbidity:"
* item[5].item[2].type    = #group

* item[5].item[2].item[0].linkId  = "Comcond_present"
* item[5].item[2].item[0].text    = "Any underlying conditions?"
* item[5].item[2].item[0].type    = #choice
* item[5].item[2].item[0].code    = $LNC#75618-9
* item[5].item[2].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[5].item[2].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.present"

* item[5].item[2].item[1].linkId  = "section_comorb_list"
* item[5].item[2].item[1].text    = "If yes, select all that apply:"
* item[5].item[2].item[1].type    = #group
* item[5].item[2].item[1].enableWhen[0].question = "Comcond_present"
* item[5].item[2].item[1].enableWhen[0].operator = #=
* item[5].item[2].item[1].enableWhen[0].answerCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[5].item[2].item[1].item[0].linkId  = "Comcond_preg"
* item[5].item[2].item[1].item[0].text    = "Pregnancy"
* item[5].item[2].item[1].item[0].type    = #boolean
* item[5].item[2].item[1].item[0].code    = $LNC#82810-3
* item[5].item[2].item[1].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.pregnant"

* item[5].item[2].item[1].item[0].item[0].linkId  = "Comcond_pregt"
* item[5].item[2].item[1].item[0].item[0].text    = "Trimester of pregnancy"
* item[5].item[2].item[1].item[0].item[0].type    = #choice
* item[5].item[2].item[1].item[0].item[0].code    = $LNC#32418-6
* item[5].item[2].item[1].item[0].item[0].answerValueSet = Canonical(WhoCrValueSetPregnancyTrimester)
* item[5].item[2].item[1].item[0].item[0].enableWhen[0].question = "Comcond_preg"
* item[5].item[2].item[1].item[0].item[0].enableWhen[0].operator = #=
* item[5].item[2].item[1].item[0].item[0].enableWhen[0].answerBoolean = true
* item[5].item[2].item[1].item[0].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.pregnantTrimester"

* item[5].item[2].item[1].item[1].linkId  = "Comcond_partum"
* item[5].item[2].item[1].item[1].text    = "Post-partum (< 6 weeks)"
* item[5].item[2].item[1].item[1].type    = #boolean
* item[5].item[2].item[1].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.postpartum"

* item[5].item[2].item[1].item[2].linkId  = "Comcond_immuno"
* item[5].item[2].item[1].item[2].text    = "Immunodeficiency including HIV"
* item[5].item[2].item[1].item[2].type    = #boolean
* item[5].item[2].item[1].item[2].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.immunodeficiency"

* item[5].item[2].item[1].item[3].linkId  = "Comcond_cardi"
* item[5].item[2].item[1].item[3].text    = "Cardiovacsular disease including hypertension"
* item[5].item[2].item[1].item[3].type    = #boolean
* item[5].item[2].item[1].item[3].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.cardiovacsular"

* item[5].item[2].item[1].item[4].linkId  = "Comcond_diabetes"
* item[5].item[2].item[1].item[4].text    = "Diabetes"
* item[5].item[2].item[1].item[4].type    = #boolean
* item[5].item[2].item[1].item[4].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.diabetes"

* item[5].item[2].item[1].item[5].linkId  = "Comcond_liver"
* item[5].item[2].item[1].item[5].text    = "Liver disease"
* item[5].item[2].item[1].item[5].type    = #boolean
* item[5].item[2].item[1].item[5].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.liver"

* item[5].item[2].item[1].item[6].linkId  = "Comcond_renal"
* item[5].item[2].item[1].item[6].text    = "Renal disease"
* item[5].item[2].item[1].item[6].type    = #boolean
* item[5].item[2].item[1].item[6].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.renal"

* item[5].item[2].item[1].item[7].linkId  = "Comcond_neuro"
* item[5].item[2].item[1].item[7].text    = "Chronic neurological or neuromuscular disease"
* item[5].item[2].item[1].item[7].type    = #boolean
* item[5].item[2].item[1].item[7].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.neuro"

* item[5].item[2].item[1].item[8].linkId  = "Comcond_malig"
* item[5].item[2].item[1].item[8].text    = "Malignancy"
* item[5].item[2].item[1].item[8].type    = #boolean
* item[5].item[2].item[1].item[8].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.malignancy"

* item[5].item[2].item[1].item[9].linkId  = "Comcond_lung"
* item[5].item[2].item[1].item[9].text    = "Chronic lung disease"
* item[5].item[2].item[1].item[9].type    = #boolean
* item[5].item[2].item[1].item[9].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.lung"

* item[5].item[2].item[1].item[10].linkId  = "Comcond_other"
* item[5].item[2].item[1].item[10].text    = "Other, please specify:"
* item[5].item[2].item[1].item[10].type    = #string
* item[5].item[2].item[1].item[10].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.comorbidities.other"

* item[5].item[2].item[2].linkId  = "section_health_status"
* item[5].item[2].item[2].text    = "Health Status at time of Reporting:"
* item[5].item[2].item[2].type    = #group

* item[5].item[2].item[2].item[0].linkId  = "patcourse_admit"
* item[5].item[2].item[2].item[0].text    = "Admission to hospital:"
* item[5].item[2].item[2].item[0].type    = #choice
* item[5].item[2].item[2].item[0].code    = $LNC#77974-4
* item[5].item[2].item[2].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[5].item[2].item[2].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasAdmitted"

* item[5].item[2].item[2].item[1].linkId  = "patcourse_presHCF"
* item[5].item[2].item[2].item[1].text    = "First date of admission to hospital:"
* item[5].item[2].item[2].item[1].type    = #date
* item[5].item[2].item[2].item[1].code    = $LNC#8656-1
* item[5].item[2].item[2].item[1].enableWhen[0].question  = "patcourse_admit"
* item[5].item[2].item[2].item[1].enableWhen[0].operator  = #=
* item[5].item[2].item[2].item[1].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* item[5].item[2].item[2].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.admitDate"

* item[5].item[2].item[2].item[2].linkId  = "section_hospital_admission"
* item[5].item[2].item[2].item[2].text    = "if yes:"
* item[5].item[2].item[2].item[2].type    = #group
* item[5].item[2].item[2].item[2].enableWhen[0].question  = "patcourse_admit"
* item[5].item[2].item[2].item[2].enableWhen[0].operator  = #=
* item[5].item[2].item[2].item[2].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[5].item[2].item[2].item[2].item[0].linkId  = "patcourse_icu"
* item[5].item[2].item[2].item[2].item[0].text    = "Did the case receive care in an intensive care unit (ICU)?"
* item[5].item[2].item[2].item[2].item[0].type    = #choice
* item[5].item[2].item[2].item[2].item[0].code    = $LNC#95420-6
* item[5].item[2].item[2].item[2].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[5].item[2].item[2].item[2].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedIcuCare"

* item[5].item[2].item[2].item[2].item[1].linkId  = "patcourse_vent"
* item[5].item[2].item[2].item[2].item[1].text    = "Did the case receive ventilation?"
* item[5].item[2].item[2].item[2].item[1].type    = #choice
* item[5].item[2].item[2].item[2].item[1].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[5].item[2].item[2].item[2].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.ventilated"

* item[5].item[2].item[2].item[2].item[2].linkId  = "patcourse_ecmo"
* item[5].item[2].item[2].item[2].item[2].text    = "Did the case receive extracorporeal membrane oxygenation?"
* item[5].item[2].item[2].item[2].item[2].type    = #choice
* item[5].item[2].item[2].item[2].item[2].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[5].item[2].item[2].item[2].item[2].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.receivedEcmo"

* item[5].item[2].item[2].item[3].linkId  = "patcourse_iso"
* item[5].item[2].item[2].item[3].text  = "Is case in isolation with Infection Control Practice in place?"
* item[5].item[2].item[2].item[3].type  = #choice
* item[5].item[2].item[2].item[3].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[5].item[2].item[2].item[3].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.wasIsolated"

* item[5].item[2].item[2].item[3].item[0].linkId  = "patcourse_dateiso"
* item[5].item[2].item[2].item[3].item[0].text  = "Date of isolation:"
* item[5].item[2].item[2].item[3].item[0].type  = #date
* item[5].item[2].item[2].item[3].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.clinicalStatus.patientCourse.isolatedDate"

* item[6].linkId  = "section_exposure_risk"
* item[6].prefix  = "Section 3"
* item[6].text    = "Exposure risk in the 14 days prior to symptom onset (prior to testing if asymptomatic)"
* item[6].type    = #group

* item[6].item[0].linkId  = "patinfo_occuhcw"
* item[6].item[0].text  = "Is case a Health Care Worker (any job in a health care setting):"
* item[6].item[0].type  = #choice
* item[6].item[0].code  = $LNC#95418-0
* item[6].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[6].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.isHealthcareWorker"

* item[6].item[0].item[0].linkId  = "patinfo_occuhcw_ifyes"
* item[6].item[0].item[0].text    = "If yes:"
* item[6].item[0].item[0].type    = #group
* item[6].item[0].item[0].enableWhen[0].question  = "patinfo_occuhcw"
* item[6].item[0].item[0].enableWhen[0].operator  = #=
* item[6].item[0].item[0].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[6].item[0].item[0].item[0].linkId  = "patinfo_occuhcw_country"
* item[6].item[0].item[0].item[0].text    = "Country:"
* item[6].item[0].item[0].item[0].type    = #open-choice
* item[6].item[0].item[0].item[0].answerValueSet    = Canonical(WhoCrValueSetAdmin0)
* item[6].item[0].item[0].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.workCountry"

* item[6].item[0].item[0].item[1].linkId  = "patinfo_occuhcw_city"
* item[6].item[0].item[0].item[1].text    = "City:"
* item[6].item[0].item[0].item[1].type    = #string
* item[6].item[0].item[0].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.workCity"

* item[6].item[0].item[0].item[2].linkId  = "patinfo_occuhcw_name"
* item[6].item[0].item[0].item[2].text    = "Name of Facility:"
* item[6].item[0].item[0].item[2].type    = #string
* item[6].item[0].item[0].item[2].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.patientInfo.hcw.facilityName"

* item[6].item[1].linkId  = "expo_travel"
* item[6].item[1].text  = "Has the case travelled in the 14 days prior to symptom onset?"
* item[6].item[1].type  = #choice
* item[6].item[1].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[6].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.travel.hasTravelled"

* item[6].item[1].item[0].linkId  = "expo_travel_ifyes"
* item[6].item[1].item[0].text    = "If yes, please specify the places the patient travelled to and date of departure from the places:"
* item[6].item[1].item[0].repeats = true
* item[6].item[1].item[0].type    = #group
* item[6].item[1].item[0].enableWhen[0].question  = "expo_travel"
* item[6].item[1].item[0].enableWhen[0].operator  = #=
* item[6].item[1].item[0].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[6].item[1].item[0].item[0].linkId  = "expo_travel_country"
* item[6].item[1].item[0].item[0].text    = "Country:"
* item[6].item[1].item[0].item[0].type    = #open-choice
* item[6].item[1].item[0].item[0].code    = $LNC#94651-7
* item[6].item[1].item[0].item[0].answerValueSet    = Canonical(WhoCrValueSetAdmin0)
* item[6].item[1].item[0].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.travel.location.country"

* item[6].item[1].item[0].item[1].linkId  = "expo_travel_city"
* item[6].item[1].item[0].item[1].text    = "City:"
* item[6].item[1].item[0].item[1].type    = #string
* item[6].item[1].item[0].item[1].code    = $LNC#94653-3
* item[6].item[1].item[0].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.travel.location.city"

* item[6].item[1].item[0].item[2].linkId  = "expo_travel_date"
* item[6].item[1].item[0].item[2].text    = "Date of Departure from the place:"
* item[6].item[1].item[0].item[2].type    = #date
* item[6].item[1].item[0].item[2].code    = $LNC#91560-3
* item[6].item[1].item[0].item[2].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.visitedHealthcare"

* item[6].item[2].linkId  = "expo_visit_healthcare"
* item[6].item[2].text  = "Has case visited any health care facility in the 14 days prior to symptom onset?"
* item[6].item[2].type  = #choice
* item[6].item[2].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[6].item[2].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.visitedHealthcare"


* item[6].item[3].linkId  = "expo_contact_case"
* item[6].item[3].text  = "Has case had contact with a confirmed case in the 14 days prior to symptom onset?"
* item[6].item[3].type  = #choice
* item[6].item[3].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[6].item[3].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.contact.hadContact"

* item[6].item[3].item[0].linkId  = "expo_contacts"
* item[6].item[3].item[0].text    = "If yes, please list unique case identifiers of all probable or confirmed cases:"
* item[6].item[3].item[0].repeats = true
* item[6].item[3].item[0].type    = #group
* item[6].item[3].item[0].enableWhen[0].question  = "expo_contact_case"
* item[6].item[3].item[0].enableWhen[0].operator  = #=
* item[6].item[3].item[0].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[6].item[3].item[0].item[0].linkId  = "expo_ID"
* item[6].item[3].item[0].item[0].text    = "Contact ID"
* item[6].item[3].item[0].item[0].type    = #string
* item[6].item[3].item[0].item[0].code    = $LNC#94657-4
* item[6].item[3].item[0].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.contact.contact.identifier"

* item[6].item[3].item[0].item[1].linkId  = "expo_case_date_first"
* item[6].item[3].item[0].item[1].text    = "First Date of Contact"
* item[6].item[3].item[0].item[1].type    = #string
* item[6].item[3].item[0].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.contact.contact.exposureFirstDate"

* item[6].item[3].item[0].item[2].linkId  = "expo_case_date_last"
* item[6].item[3].item[0].item[2].text    = "Last Date of Contact"
* item[6].item[3].item[0].item[2].type    = #string
* item[6].item[3].item[0].item[2].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.contact.contact.exposureLastDate"

* item[6].item[3].item[0].item[3].linkId  = "expo_case_setting_detail"
* item[6].item[3].item[0].item[3].text    = "Contact setting:"
* item[6].item[3].item[0].item[3].type    = #string
* item[6].item[3].item[0].item[3].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.contact.contact.setting"

* item[6].item[4].linkId  = "expo_case_location"
* item[6].item[4].text    = "Most likely country of exposure:"
* item[6].item[4].type    = #open-choice
* item[6].item[4].answerValueSet    = Canonical(WhoCrValueSetAdmin0)
* item[6].item[4].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.exposure.contact.country"

* item[7].linkId    = "section_outcome"
* item[7].text      = "Outcome"
* item[7].type      = #group

* item[7].item[0].linkId    = "outcome_instruct"
* item[7].item[0].text      = "Complete and re-send the full form as soon as outcome of disease is known or after 30 days after initial report."
* item[7].item[0].type      = #display

* item[7].item[1].linkId    = "outcome_submitted_date"
* item[7].item[1].text      = "Date of re-submission of this report:"
* item[7].item[1].type      = #date
* item[7].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.submissionDate"

* item[7].item[2].linkId    = "outcome_asymp"
* item[7].item[2].text      = "If case was asymptomatic at time of specimen collection resulting in first laboratory confirmation, did the case develop any symptoms or signs at any time prior to discharge or death:"
* item[7].item[2].type      = #choice
//* item[7].item[2].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[7].item[2].answerOption[0].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#N // "No (i.e., case remains asymptomatic)"
* item[7].item[2].answerOption[1].valueCoding = http://terminology.hl7.org/CodeSystem/v2-0136#Y // "Yes, asymptomatic case (as previously reported) developed symptoms and/or signs of illness"
* item[7].item[2].answerOption[2].valueCoding = http://terminology.hl7.org/CodeSystem/data-absent-reason#unknown // "Unknown"
* item[7].item[2].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.symptomatic"

* item[7].item[3].linkId    = "outcome_asymp_date"
* item[7].item[3].text      = "Date of onset of symptoms/signs of illness:"
* item[7].item[3].type      = #date
* item[7].item[3].enableWhen[0].question  = "outcome_asymp"
* item[7].item[3].enableWhen[0].operator  = #=
* item[7].item[3].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* item[7].item[3].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.symptomaticDate"

* item[7].item[4].linkId  = "section_clinical_course"
* item[7].item[4].text    = "Clinical Course:"
* item[7].item[4].type    = #group

* item[7].item[4].item[0].linkId  = "outcome_patcourse_admit"
* item[7].item[4].item[0].text    = "Admission to hospital (may have been previously reported):"
* item[7].item[4].item[0].type    = #choice
* item[7].item[4].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[7].item[4].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.patientCourse.wasAdmitted"

* item[7].item[4].item[1].linkId  = "outcome_patcourse_presHCF"
* item[7].item[4].item[1].text    = "First date of admission to hospital:"
* item[7].item[4].item[1].type    = #date
* item[7].item[4].item[1].enableWhen[0].question  = "outcome_patcourse_admit"
* item[7].item[4].item[1].enableWhen[0].operator  = #=
* item[7].item[4].item[1].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y
* item[7].item[4].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.patientCourse.admitDate"

* item[7].item[4].item[2].linkId  = "section_outcome_admission"
* item[7].item[4].item[2].text    = "If yes:"
* item[7].item[4].item[2].type    = #group
* item[7].item[4].item[2].enableWhen[0].question  = "outcome_patcourse_admit"
* item[7].item[4].item[2].enableWhen[0].operator  = #=
* item[7].item[4].item[2].enableWhen[0].answerCoding  = http://terminology.hl7.org/CodeSystem/v2-0136#Y

* item[7].item[4].item[2].item[0].linkId  = "outcome_patcourse_icu"
* item[7].item[4].item[2].item[0].text    = "Did the case receive care in an intensive care unit (ICU)?"
* item[7].item[4].item[2].item[0].type    = #choice
* item[7].item[4].item[2].item[0].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[7].item[4].item[2].item[0].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.patientCourse.receivedIcuCare"

* item[7].item[4].item[2].item[1].linkId  = "outcome_patcourse_vent"
* item[7].item[4].item[2].item[1].text    = "Did the case receive ventilation?"
* item[7].item[4].item[2].item[1].type    = #choice
* item[7].item[4].item[2].item[1].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[7].item[4].item[2].item[1].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.patientCourse.ventilated"

* item[7].item[4].item[2].item[2].linkId  = "outcome_patcourse_ecmo"
* item[7].item[4].item[2].item[2].text    = "Did the case receive extracorporeal membrane oxygenation?"
* item[7].item[4].item[2].item[2].type    = #choice
* item[7].item[4].item[2].item[2].answerValueSet = Canonical(WhoCrValueSetYesNoUnk)
* item[7].item[4].item[2].item[2].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.patientCourse.receivedEcmo"

* item[7].item[5].linkId  = "outcome_patcourse_status"
* item[7].item[5].text    = "Health Outcome:"
* item[7].item[5].type    = #choice
* item[7].item[5].answerValueSet = Canonical(WhoCrValueSetPatientOutcome)
* item[7].item[5].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.patientCourse.status"

* item[7].item[6].linkId  = "outcome_patcourse_status_other"
* item[7].item[6].text    = "If other, please explain:"
* item[7].item[6].type    = #string
* item[7].item[6].enableWhen[0].question  = "outcome_patcourse_status"
* item[7].item[6].enableWhen[0].operator  = #=
* item[7].item[6].enableWhen[0].answerCoding = WhoCrCodeSystemPatientOutcome#OTHER
* item[7].item[6].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.patientCourse.statusOther"

* item[7].item[7].linkId  = "outcome_date_of_outcome"
* item[7].item[7].text    = "Date of Release from isolation/hospital or Date of Death:"
* item[7].item[7].type    = #date
* item[7].item[7].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.patientCourse.statusDate"

* item[7].item[8].linkId  = "outcome_lab_date"
* item[7].item[8].text    = "Date of last test:"
* item[7].item[8].type    = #date
* item[7].item[8].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.labDate"

* item[7].item[9].linkId  = "outcome_lab_result"
* item[7].item[9].text    = "Results of last test:"
* item[7].item[9].type    = #choice
* item[7].item[9].answerValueSet = Canonical(WhoCrValueSetTestResult)
* item[7].item[9].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.labResult"

* item[7].item[10].linkId  = "outcome_contacts_followed"
* item[7].item[10].text    = "Total number of contacts followed for this case:"
* item[7].item[10].type    = #integer
* item[7].item[10].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.contactsFollowed"

* item[7].item[11].linkId  = "outcome_contacts_followed_unknown"
* item[7].item[11].text    = "Unknown:"
* item[7].item[11].type    = #boolean
* item[7].item[11].definition    = "http://www.example.com/fhir/cr/covid19/StructureDefinition/WhoCrSurveillanceDataDictionary#WhoCrSurveillanceDataDictionary.outcome.contactsFollowedUnknown"

