### Introduction
This document specifies the exchange format for cancer registration.   
On January 1st 2020 the new National Law on Cancer Registration (NLCR) and the according Ordinance on Cancer Registration (OCR) enters into force. In order to achieve data completeness on a national level, institutions involved in diagnosing or treating cancer are required to report cases of cancer to a cancer registry. For further information on the legal framework, please consult the website of the National Agency for Cancer Registration ([NACR](https://www.nkrs.ch/)) or the website of the Federal Office of Public Health ([FOPH](https://www.bag.admin.ch/), keyword “Krebsregistrierung”, “Enregistrement du cancer”, “Registrazione delle malattie tumorali”).


### Scope and Download
* [Use Case](usecase-german.html) - is used to illustrate the processes related to cancer registration
* [Cancer Report](logicalmodel.html) - represented as a logical model to show the used data set
* [Profiles](profiles.html) - are useful constraints of core FHIR resources and datatypes for cancer registration use
* [Extensions](extensions.html) - are FHIR extensions that are added for cancer registration use
* [Terminologies](terminology.html) - are defined or referenced code systems and value sets for cancer registration  

**Download**: You can download this implementation guide in [npm](https://confluence.hl7.org/display/FHIR/NPM+Package+Specification) format from [here](package.tgz).


### Case-opening Criteria and MustSupport
In order to be able to report a case to the cancer registry, so-called case-opening criteria are required. These criteria are represented in the FHIR implementation guide with the [mustSupport](https://www.hl7.org/fhir/conformance-rules.html#mustSupport) flag set to true. The case-opening criteria include the following personal data on the patient and the date of the cancer report:

* [Family name](StructureDefinition-ch-crl-patient-definitions.html#Patient.name.family)
* [First name(s)](StructureDefinition-ch-crl-patient-definitions.html#Patient.name.given)
* [Sex](StructureDefinition-ch-crl-patient-definitions.html#Patient.gender)
* [Date of Birth](StructureDefinition-ch-crl-patient-definitions.html#Patient.birthDate)
* [OASI number](StructureDefinition-ch-crl-patient-definitions.html#Patient.identifier:AHVN13)
* [Date of notification](StructureDefinition-ch-crl-bundle-definitions.html#Bundle.timestamp)
* [Date of informing the patient](StructureDefinition-ch-crl-composition-definitions.html#Composition.section:registrationRequirements.entry:communication)
* [Wheter patient is deceased](StructureDefinition-ch-crl-patient-definitions.html#Patient.deceased[x])


### Copyright
This specification includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation ([IHTSDO](http://snomed.org/)) and distributed by agreement between IHTSDO and HL7. Implementers of these specification must have the appropriate SNOMED CT Affiliate license - for more information contact 
<https://www.snomed.org/snomed-ct/getsnomed> or <info@snomed.org>.

This specification contains content from LOINC® (<http://loinc.org>). The LOINC table, LOINC codes, and LOINC panels and forms file are copyright © 1995-2014, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and available at no cost under the license at <http://loinc.org/terms-of-use>.