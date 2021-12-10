Profile: KLReportingFFBCarePlanEvaluation
Parent: Observation
Id: kl-reporting-ffb-carePlanEvaluation
Title: "CarePlanEvaluation"
Description: "Støttebehovsvurdering"
* identifier ..0
* basedOn ..0
* partOf ..0
* category ..0
* status MS
* code ..1 MS
* code.coding 1..1 MS
* code.coding = $KLCommon#effe55c7-572c-4a99-8fb4-2a9dda2f6572
* code.text ..0
* subject 1.. MS
* subject only Reference(KLReportingFFBCitizen)
* subject ^type.aggregation = #bundled
* focus ..0
* encounter ..0
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.text ..0
* valueCodeableConcept.coding from KLNeedsAssessmentCodesFFB //kun for støttebehov
* effective[x] 1..1 MS
* effective[x] only dateTime
* issued ..0
* performer ..0
* dataAbsentReason ..0
* interpretation ..0
* note ..0
* bodySite ..0
* method ..0
* specimen ..0
* device ..0
* referenceRange ..0
* hasMember ..0
* derivedFrom ..0
* component ..0

* code ^short = "[DK] vurderingskode"
* valueCodeableConcept.text ^short = "[DK] vurderingsresultat"
* valueCodeableConcept.coding ^short = "[DK] struktureretVurdering"
* subject ^short = "[DK] vurderingssubjekt"
* encounter ^short = "[DK] vurderingskontakt"
* performer ^short = "[DK] vurderingsansvarlig"
* basedOn ^short = "[DK] vurderingBaseretPå"
* effectiveDateTime ^short = "[DK] vurderingstid"
* status ^short = "[DK] vurderingsstatus"
