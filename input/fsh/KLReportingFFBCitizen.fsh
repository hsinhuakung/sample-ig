Profile: KLReportingFFBCitizen
Parent: Patient
Id: kl-reporting-ffb-citizen
Title: "Citizen"
Description: "Administrative information about a citizen receiving social services."
* identifier 1..1 MS
* identifier only dk-core-cpr-identifier
* active ..0
* name ..0
* telecom ..0
* gender ..0
* birthDate ..0
* deceased[x] ..0
* address ..0
* maritalStatus ..0
* multipleBirth[x] ..0
* photo ..0
* contact ..0
* communication ..0
* generalPractitioner ..0
* managingOrganization 1..1 MS
* managingOrganization.reference ..0
* managingOrganization.type ..0
* managingOrganization.identifier 1..1 MS
* managingOrganization.identifier only KombitStsOrgIdentifier
* managingOrganization.display ..0
* link ..0
