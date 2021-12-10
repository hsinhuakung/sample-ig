Profile: KLReportingFFBTargetGroup
Parent: Condition
Id: kl-reporting-ffb-targetGroup
Title: "TargetGroup"
Description: "Target group of a citizen"
* identifier ..0
* clinicalStatus MS
* verificationStatus MS
* category ..0
* severity ..0
* code 1.. MS
* code.coding 1.. MS
* code.coding from KLConditionsAndTargetGroupsFFB (required)
* code.text ..0
* bodySite ..0
* subject 1.. MS
* subject only Reference(KLReportingFFBCitizen)
* subject ^type.aggregation = #bundled
* encounter ..0
* onset[x] ..0
* abatement[x] ..0
* recordedDate 1.. MS
* recorder ..0
* asserter ..0
* stage ..0
* evidence ..0
* note ..0

* code.coding ^short = "[DK] tværorganisatoriskTilstandskode"
* code.text ^short = "[DK] tværorganisatoriskTilstandsvurdering"
* subject ^short = "[DK] tværorganisatoriskTilstandsubjekt"
* asserter ^short = "[DK] tværorganisatoriskTilstandAnsvarlig"
* recorder ^short = "[DK] tværorganisatoriskTilstandDokumentationsansvarlig"
* verificationStatus ^short = "[DK] tværorganisatoriskTilstandstatus"
* clinicalStatus ^short = "[DK] tværorganisatoriskTilstandstatus"
* onset[x] ^short = "[DK] tværorganisatoriskTilstandstart"
* abatement[x] ^short = "[DK] tværorganisatoriskTilstandsafslutningstid"
* recordedDate ^short = "[DK] tværorganisatoriskTilstandregistreringstid"
* note ^short = "[DK] tværorganisatoriskTilstandFagligtNotat"
