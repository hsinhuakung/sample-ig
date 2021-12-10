Profile: KLReportingFFBIntervention
Parent: CarePlan
Id: kl-reporting-ffb-intervention
Title: "Intervention"
Description: "Intervention in a reported care plan"
* identifier ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* basedOn 1.. MS
* basedOn only Reference(KLReportingFFBCarePlan)
* basedOn ^type.aggregation = #bundled
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
* author ..0
* period MS
* period.id ..0
* period.start 1.. MS
* period.end MS
* created MS
* created 1.. MS
* contributor ..0
* careTeam ..0
* addresses ..0
* supportingInfo ..0
* goal ..0
* activity 1.. MS
* activity.id ..0
* activity.outcomeCodeableConcept ..0
* activity.outcomeReference ..0
* activity.progress ..0
* activity.reference ..0
* activity.detail 1..1 MS
* activity.detail.id ..0
* activity.detail.kind ..0
* activity.detail.instantiatesCanonical ..0
* activity.detail.instantiatesUri ..0
* activity.detail.code 1..1 MS
* activity.detail.code.id ..0
* activity.detail.code.text ..0
* activity.detail.code.coding 1..1 MS
* activity.detail.code.coding from KLInterventionsFFB
* activity.detail.reasonCode ..0
* activity.detail.reasonReference ..0
* activity.detail.status MS
* activity.detail.statusReason ..0
* activity.detail.doNotPerform ..0
* activity.detail.scheduled[x] ..0
* activity.detail.location ..0
* activity.detail.product[x] ..0
* activity.detail.dailyAmount ..0
* activity.detail.quantity ..0
* activity.detail.description ..0
* activity.detail.goal ..0
* activity.detail.performer ..0
* note ..0

//shorts
* activity.detail.code.coding ^short = "[DK] indsatsskode"
* created ^short = "[DK] indsatsoprettelsestid"
* period.start ^short = "[DK] indsatsbevillingstid"
* period.end ^short = "[DK] indsatsafslutningstid"
* status ^short = "[DK] indsatsstatus"
* intent ^short = "[DK] indsatshensigt"
* subject ^short = "[DK] indsatssubjekt"
* activity.detail.performer ^short = "[DK] indsatsleverandør"
* basedOn ^short = "[DK] indsatsDelAfPlan"
* activity.detail.goal ^short = "[DK] indsatsmål"
* activity.detail.status ^short = "[DK] indsatsAktivitetsstatus"

// Invariant: kl-reporting-ffb-intervention-1
// Description: "Intervention must have a follow-up encounter if end date is not set"
// Severity: #error
// Expression: "(period.end.exists()) or extension('http://ffb/reporting/kl.dk/1.0/StructureDefinition/kl-reporting-ffb-follow-up-date-extension').exists()"
