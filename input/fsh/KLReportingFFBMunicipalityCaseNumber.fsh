Extension: KLReportingFFBMunicipalityCaseNumber
Id: kl-reporting-ffb-municipalityCaseNumber
Title: "MunicipalityCasenumber"
Description: "Extension for municipality case numbers"
* extension contains
    municipalitySpecific 0..1 and
    official 0..1
* extension[municipalitySpecific].value[x] only Identifier
* extension[municipalitySpecific].valueIdentifier.use = #usual
* extension[municipalitySpecific].valueIdentifier.assigner ..0
