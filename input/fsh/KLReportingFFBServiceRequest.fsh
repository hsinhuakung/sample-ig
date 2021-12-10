Profile: KLReportingFFBServiceRequest
Parent: ServiceRequest
Id: kl-reporting-ffb-serviceRequest
Title: "ServiceRequest"
Description: "ServiceRequest leading to the gathering of information"
* implicitRules ..0
* language ..0
* contained ..0
* extension contains
    KLReportingFFBMunicipalityCaseNumber named municipalityCaseNumber 0..1 MS
* extension ^slicing.rules = #closed
* modifierExtension ..0
* instantiatesCanonical ..0
* instantiatesUri ..0
* identifier ..0
* basedOn ..0
* replaces ..0
* requisition ..0
* status MS
* intent MS
* intent = $requestIntent#proposal
* category ..0
* priority ..0
* doNotPerform ..0
* code ..0
* orderDetail ..0
* quantity[x] ..0
* subject MS
* subject only Reference(KLReportingFFBCitizen)
* subject ^type.aggregation = #bundled
* encounter ..0
* occurrence[x] ..0
* asNeeded[x] ..0
* authoredOn ..0
* requester ..0
* performerType ..0
* performer ..0
* locationCode ..0
* locationReference ..0
* reasonCode ..0
* reasonReference ..0
* insurance ..0
* supportingInfo ..0
* specimen ..0
* bodySite ..0
* note ..0
* patientInstruction ..0
* relevantHistory ..0

* requester ^short = "[DK] anledningAnsvarlig"
* reasonCode.text ^short = "[DK] anledningsÅrsag"
* status ^short = "[DK] anledningsStatus"
* intent ^short = "[DK] anledningsHensigt"
* code.coding ^short = "[DK] anledningsIndsats"
* orderDetail.coding ^short = "[DK] anledningsAnmodetIndsats"
* subject ^short = "[DK] anledningsSubjekt"
* authoredOn ^short = "[DK] anledningstid"
* reasonReference ^short = "[DK] Afhængig af datatype enten anledningsBegrundelse eller anledningsÅrsagsreference"
* extension[municipalityCaseNumber] ^short = "[DK] anledningDokumenteretISag"