Profile: KLReportingFFBDeliveryReport
Parent: Bundle
Id: kl-reporting-ffb-deliveryReport
Title: "DeliveryReport"
Description: "Deliver report to deliver for each citizen."
* identifier ..0
* type = #collection
* timestamp 1..1
* total ..0
* link ..0
* entry.resource 1..1
* entry.resource only
    KLReportingFFBCitizen or
    KLReportingFFBServiceRequest or
    KLReportingFFBInformationGathering or 
    KLReportingFFBInterventionGoal or
    KLReportingFFBServicePerformer or
    KLReportingFFBFollowUpEncounter or
    CarePlan or // (KLReportingFFBCarePlan or KLReportingFFBIntervention)
    Condition or // (KLReportingFFBCondition or KLReportingFFBTargetGroup)
    Observation // (KLReportingFFBCarePlanEvaluation or KLReportingFFBFollowUp)
* entry.resource ^short = "Content constrained to known profiles (see also constraint kl-reporting-ffb-delivery-report-1, kl-reporting-ffb-delivery-report-2, and kl-reporting-ffb-delivery-report-3)"
* entry.search ..0
* entry.request ..0
* entry.response ..0
* signature ..0
* obeys kl-reporting-ffb-delivery-report-1
* obeys kl-reporting-ffb-delivery-report-2
* obeys kl-reporting-ffb-delivery-report-3

Invariant: kl-reporting-ffb-delivery-report-1
Description: "All Conditon resources shall conform to either kl-reporting-ffb-condition or kl-reporting-ffb-targetGroup profile"
Severity: #error
Expression: "entry.ofType(Condition).all(
    resource.conformsTo('http://ffb/reporting/kl.dk/1.0/StructureDefinition/kl-reporting-ffb-condition')
 or resource.conformsTo('http://ffb/reporting/kl.dk/1.0/StructureDefinition/kl-reporting-ffb-targetGroup'))"

Invariant: kl-reporting-ffb-delivery-report-2
Description: "All CarePlan resources shall conform to either kl-reporting-ffb-carePlan or kl-reporting-ffb-intervention profile"
Severity: #error
Expression: "entry.ofType(CarePlan).all(
    resource.conformsTo('http://ffb/reporting/kl.dk/1.0/StructureDefinition/kl-reporting-ffb-carePlan')
 or resource.conformsTo('http://ffb/reporting/kl.dk/1.0/StructureDefinition/kl-reporting-ffb-intervention'))"

Invariant: kl-reporting-ffb-delivery-report-3
Description: "All CarePlan resources shall conform to either kl-reporting-ffb-carePlan or kl-reporting-ffb-intervention profile"
Severity: #error
Expression: "entry.ofType(Observation).all(
    resource.conformsTo('http://ffb/reporting/kl.dk/1.0/StructureDefinition/kl-reporting-ffb-carePlanEvaluation')
 or resource.conformsTo('http://ffb/reporting/kl.dk/1.0/StructureDefinition/kl-reporting-ffb-followUp'))"
