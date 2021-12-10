Profile: KLReportingFFBServicePerformer
Parent: CareTeam
Id: kl-reporting-ffb-servicePerformer
Title: "ServicePerformer"
Description: "Type of service performer for a care plan"
* identifier ..0
* status ..0
* category 1..1 MS
* category from http://kl.dk/fhir/common/caresocial/ValueSet/KLServiceCodesFFB
* name ..0
* subject 1.. MS
* subject only Reference(KLReportingFFBCitizen)
* encounter ..0
* period ..0
* participant ..0
* reasonCode ..0
* reasonReference ..0
* managingOrganization ..0
* telecom ..0
* note ..0