Profile: KLReportingFFBCondition
Parent: Condition
Id: kl-reporting-ffb-condition
Title: "Condition"
Description: "Condition according to FFB"
* implicitRules ..0
* language ..0
* contained ..0
* extension contains
   ConditionLastAssertedDate named conditionLastAssertedDate 0..1 MS
* extension ^slicing.rules = #closed
* modifierExtension ..0
* identifier ..0
* clinicalStatus 1..1 MS
* verificationStatus MS
* category ..0
* severity MS
* severity from http://kl.dk/fhir/common/caresocial/ValueSet/KLSeveritiesFFB
* severity.id ..0
* severity.extension ..0
* severity.text ..0
* code 1.. MS
* code.id ..0
* code.extension ..0
* code from http://kl.dk/fhir/common/caresocial/ValueSet/KLConditionCodesFFB (required)
* code.text ..0
* bodySite ..0
* subject 1.. MS
* subject only Reference(KLReportingFFBCitizen)
* encounter ..0
* onset[x] ..0
* abatement[x] ..0
* recordedDate 1.. MS
* recorder ..0
* asserter ..0
* stage ..0
* evidence ..0
* note ..0
* obeys kl-reporting-ffb-condition-1

//Specifying danish descriptions
* code ^short = "[DK] tilstandskode"
* severity ^short = "[DK] tilstandssværhedsgrad" 
* clinicalStatus ^short = "[DK] tilstandsstatus"
* verificationStatus ^short = "[DK] tilstandsstatus"
* code.text ^short = "[DK] tilstandsvurdering" 
* note.text ^short = "[DK] tilstandFagligtNotat" 
* recordedDate ^short = "[DK] tilstandsoprettelsestid" 
* abatementDateTime ^short = "[DK] tilstandsafslutningstid" 
* subject ^short = "[DK] tilstandssubjekt" 
* asserter ^short = "[DK] tilstandsansvarlig" 
* evidence.detail ^short = "[DK] tilstandsevidens (herunder tilstandOplysning og tilstandOpfølgningsresultat)" 
* category.coding ^short = "[DK] tilstandsfokus"
* extension[conditionLastAssertedDate] ^short = "[DK] tilstandSidstVurderetTid"
 
* code.coding SU
* severity.coding SU
* code.text SU
* note.text SU
* evidence.detail SU
* category.coding SU
* extension[conditionLastAssertedDate] SU

Invariant: kl-reporting-ffb-condition-1
Description: "Severity is mandatory for condition codes of 'Aktivitet og Deltagelse' and not allowed for other condition codes"
Severity: #error
Expression: "(severity.exists() and code.memberOf('http://kl.dk/fhir/common/caresocial/ValueSet/KLConditionADCodesFFB')) or
    (severity.exists().not() and code.memberOf('http://kl.dk/fhir/common/caresocial/ValueSet/KLConditionADCodesFFB').not())"
