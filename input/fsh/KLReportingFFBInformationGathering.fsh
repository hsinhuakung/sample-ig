Profile: KLReportingFFBInformationGathering
Parent: ClinicalImpression
Id: kl-reporting-ffb-informationGathering
Title: "InformationGathering"
Description: "Assessment of the citizen"
* implicitRules ..0
* language ..0
* contained ..0
* extension contains BasedOnServiceRequest named basedOnServiceRequest 1..1 MS
* extension[basedOnServiceRequest].valueReference only Reference(KLReportingFFBServiceRequest)
* extension[basedOnServiceRequest].valueReference ^type.aggregation = #bundled
* extension ^slicing.rules = #closed
* modifierExtension ..0
* identifier ..0
* status MS
* statusReason ..0
* code ..0
* description ..0
* subject 1.. MS
* subject only Reference(KLReportingFFBCitizen)
* subject ^type.aggregation = #bundled
* encounter ..0
* effective[x] 1.. MS
* effective[x] only dateTime
* date ..0
* assessor ..0
* previous ..0
* problem ..0
* protocol ..0
* summary ..0
* finding MS
* finding.itemCodeableConcept ..0
* finding.extension ..0
* finding.modifierExtension ..0
* finding.itemReference MS
* finding.itemReference only Reference(KLReportingFFBCondition)
* finding.itemReference ^type.aggregation = #bundled
* finding.basis ..0
* investigation ..1 MS
* investigation.item MS
* investigation.item only Reference(KLReportingFFBCarePlanEvaluation)


* code.coding ^short = "[DK] oplysningsaktivitetstype"
* subject ^short = "[DK] oplysningsaktivitetsubjekt"
* assessor ^short = "[DK] oplysningsaktivitetsudfører"
* effectiveDateTime ^short = "[DK] oplysningsaktivitetstid"
* encounter ^short = "[DK] oplysningsaktivitetskontakt"
* extension[basedOnServiceRequest] ^short = "[DK] oplysningsaktivitetsordre"
* investigation.code.coding ^short = "[DK] oplysningsaktivitetsObservationstype"
* investigation.item ^short = "[DK] OplysningsaktivitetsOplysning"
* investigation.item ^short = "[DK] oplysningsaktivitetsKonklusion"
* finding.itemReference ^short = "[DK] oplysningsaktivitetsTilstand"
* status ^short = "[DK] oplysningsaktivitetsstatus"
