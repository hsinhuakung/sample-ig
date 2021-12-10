Profile: KLReportingFFBFollowUpEncounter
Parent: Encounter
Id: kl-reporting-ffb-followUpEncounter
Title: "FollowUpEncounter"
Description: "Encounter for following up on care plans and interventions"
* identifier ..0
* status MS
* status = #planned
* statusHistory ..0
* class MS
* class = $v3ActCode#HH
* class.version ..0
* class.display ..0
* class.userSelected ..0
* classHistory ..0
* type 1..1 MS
* type from http://kl.dk/fhir/common/caresocial/ValueSet/KLEncounterTypes (required)
* type.coding 1..1 MS
* type.coding = $KLCommon#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* type.coding.version ..0
* type.coding.display ..0
* type.coding.userSelected ..0
* type.text ..0
* serviceType ..0
* priority ..0
* subject 1..1 MS
* subject only Reference(KLReportingFFBCitizen)
* subject ^type.aggregation = #bundled
* episodeOfCare ..0
* basedOn ..0
* participant ..0
* appointment ..0
* period 1..1 MS
* period.start 1..1 MS
* period.end ..0
* length ..0
* reasonCode ..0
* reasonReference ..0
* diagnosis ..0
* account ..0
* hospitalization ..0
* location ..0
* serviceProvider ..0
* partOf ..0
