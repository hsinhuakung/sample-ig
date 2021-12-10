Profile: KLReportingFFBCarePlan
Parent: CarePlan
Id: kl-reporting-ffb-carePlan
Title: "CarePlan"
Description: "FFB care plan"
* extension contains KLReportingFFBMunicipalityCaseNumber named municipalityCaseNumber 1..1 MS
* extension contains KLReportingFFBFollowUpDateExtension named followUpDate 0..1 MS
* identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn ..0
* replaces ..0
* partOf ..0
* status MS
* intent MS
* category ..0
* title ..0
* description ..0
* subject 1.. MS
* subject only Reference(KLReportingFFBCitizen)
* subject ^type.aggregation = #bundled
* encounter ..0
* period 1.. MS
* period.start 1.. MS
* created ..0
* author ..0
* contributor ..0
* careTeam MS
* addresses 0.. MS
* addresses.extension contains ConditionRank named conditionRank 1..1 MS
* addresses.extension[conditionRank].value[x] ^maxValuePositiveInt = 2
* addresses only Reference(KLReportingFFBTargetGroup)
* addresses.reference 1.. MS
* addresses.type ..0
* addresses.identifier ..0
* addresses.display ..0
* addresses ^type.aggregation = #bundled
* supportingInfo ..0
* goal MS
* goal only Reference(KLReportingFFBInterventionGoal)
* goal ^type.aggregation = #bundled
* activity 0..1 MS
* activity.outcomeCodeableConcept ..0
* activity.outcomeReference 1..1 MS
* activity.outcomeReference only Reference(KLReportingFFBCarePlanEvaluation)
* activity.outcomeReference ^type.aggregation = #bundled
* activity.progress ..0
* activity.reference ..0
* activity.detail ..0
* note ..0
* obeys kl-reporting-ffb-care-plan-1
* obeys kl-reporting-ffb-care-plan-2
// * obeys kl-reporting-ffb-care-plan-3
* obeys kl-reporting-ffb-care-plan-4
* obeys kl-reporting-ffb-care-plan-5

* category.coding ^short = "[DK] indsatsforløbKategori"
* description ^short = "[DK] indsatsforløbBeskrivelse" 
* created ^short = "[DK] indsatsforløbOprettelsestid" 
* period.start ^short = "[DK] indsatsforløbBevillingstid" 
* period.end ^short = "[DK] indsatsforløbAfslutningstid" 
* subject ^short = "[DK] indsatsforløbsubjekt" 
* author ^short = "[DK] indsatsforløbansvarlig" 
* careTeam ^short = "[DK] indsatsforløbsleverandør og indsatsforløbtilbud" 
* addresses ^short = "[DK] indsatsforløbmålgruppe"
* addresses.extension[conditionRank] ^short = "[DK] indsatsforløbsmålgruppeRang - 1 = primær, 2 = sekundær" 
* intent ^short = "[DK] indsatsforløbhensigt" 
* status ^short = "[DK] indsatsforløbstatus" 
* goal ^short = "[DK] indsatsforløbsmål" 
* activity.outcomeReference ^short = "[DK] støttebehovsvurdering"
* extension[municipalityCaseNumber] ^short = "[DK] anledningDokumenteretISag"

Invariant: kl-reporting-ffb-care-plan-1
Description: "CarePlan must have a follow-up encounter if ordered and not completed"
Severity: #error
Expression: "(intent != 'order') or (status = 'completed') or extension('http://ffb/reporting/kl.dk/1.0/StructureDefinition/kl-reporting-ffb-follow-up-date-extension').exists()"

Invariant: kl-reporting-ffb-care-plan-2
Description: "CarePlan shall address no more than one condition with rank 1"
Severity: #error
Expression: "addresses.where(extension('http://kl.dk/fhir/common/caresocial/StructureDefinition/ConditionRank').valuePositiveInt = '1').count() < 2"

Invariant: kl-reporting-ffb-care-plan-3
Description: "CarePlan shall contain intervention goals if ordered and not completed"
Severity: #error
Expression: "(intent != 'order') or (status = 'completed') or goal.exists()"

Invariant: kl-reporting-ffb-care-plan-4
Description: "CarePlan shall contain evaluation if ordered and not completed"
Severity: #error
Expression: "(intent != 'order') or (status = 'completed') or activity.outcomeReference.exists()"

Invariant: kl-reporting-ffb-care-plan-5
Description: "CarePlan shall contain target groups if ordered and not completed"
Severity: #error
Expression: "(intent != 'order') or (status = 'completed') or addresses.exists()"
