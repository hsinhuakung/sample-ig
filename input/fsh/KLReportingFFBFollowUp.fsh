Profile: KLReportingFFBFollowUp
Parent: Observation
Id: kl-reporting-ffb-followUp
Title: "FollowUp"
Description: "Result of follow-up on a care plan"
* identifier ..0
* basedOn ..0
* partOf ..0
* category ..0
* status MS
* status ^definition = "The status of the result value. Shall be final or entered-in-error."
* code MS
* code.coding 1..1 MS
* code.coding = $snomedCT#712744002
* subject 1.. MS
* subject only Reference(KLReportingFFBCitizen)
* subject ^type.aggregation = #bundled
* focus 1.. MS
* focus only Reference(KLReportingFFBCarePlan) 
* encounter 0..0
* effective[x] 1..1 MS
* effective[x] only dateTime
* issued ..0
* performer ..0
* value[x] 1..1 MS
* value[x] only CodeableConcept
* value[x] from http://kl.dk/fhir/common/caresocial/ValueSet/KLFollowUpCodesFFB
* dataAbsentReason ..0
* interpretation ..0
* note ..0
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember 0..0
* derivedFrom ..0
* component ..0
* obeys kl-reporting-ffb-follow-up-1

//Danish descriptions
* subject ^short = "[DK] opfølgningsubjekt"
* effective[x] ^short = "[DK] opfølgningstid"
* status ^short = "[DK] opfølgningsstatus"

Invariant: kl-reporting-ffb-follow-up-1
Description: "A follow-up observation resource shall have status final or entered-in-error"
Severity: #error
Expression: "status = 'final' or status = 'entered-in-error'"
