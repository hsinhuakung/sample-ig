// ===================================================================================================================
// 1st Encounter
// ===================================================================================================================

// --- Citizen -------------------------------------------------------------------------------------------------------

Instance: da16c0a1-840a-46b0-98b3-761e4501b343
InstanceOf: KLReportingFFBCitizen
Description: "Børge Mogensen"
Usage: #inline
* identifier
  * use = #official
  * value = "0101814321"
  * system = "urn:oid:1.2.208.176.1.2"
* managingOrganization.identifier
  * use = #official
  * value =  "d4e3f4fb-6761-4d6c-9086-74c49231f11e"
  * system = "https://www.kombit.dk/organisation"

// --- ServiceRequest ------------------------------------------------------------------------------------------------

Instance: 9947191b-270a-4f64-9b05-8be29e7f5c58
InstanceOf: KLReportingFFBServiceRequest
Description: "Service request from Børge Mogensen"
Usage: #inline
* extension[municipalityCaseNumber].extension[municipalitySpecific].valueIdentifier
  * system = "http://example.dk/identifier/case"
  * value = "Sag154689"
* status = #active
* intent = $requestIntent#proposal
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)

// ===================================================================================================================
// 2nd Encounter
// ===================================================================================================================

Instance: 498644ca-b26c-4ba7-a1ef-69d691297ba3
InstanceOf: KLReportingFFBDeliveryReport
Title: "2nd encounter"
Description: "2nd encounter / Second documentation phase – Case insight"
* type = #collection
* timestamp = 2021-05-28T17:13:41Z
* insert CitizenEntry(da16c0a1-840a-46b0-98b3-761e4501b343)
* insert ServiceRequestEntry(9947191b-270a-4f64-9b05-8be29e7f5c58)
* insert ConditionEntry(57dc36db-56ce-4a4a-95e8-2d2c8a85871a) // Bevidsthedstilstand
* insert ConditionEntry(00b972ba-0b06-4000-83f9-b733700c96e0) // Intellektuelle funktioner
* insert ConditionEntry(45b460b2-843e-48ec-8366-a3d184bf591f) // Problemløsning
* insert ConditionEntry(5089bbd1-6ec1-4f4d-a83e-4a89f44c482e) // Syn
* insert ConditionEntry(5b74d267-952d-487f-969a-68ea6a9aae39) // Døgnrytme
* insert ConditionEntry(6f77529a-d449-4e86-aaed-28b524090a32) // Tobak
* insert ConditionEntry(6468d4a7-012e-4639-8dcf-dcec775385a0) // Interesser
* insert ConditionEntry(b68548a8-b792-4aba-8358-b83a4e691b7c) // Familiesituation
* insert ConditionEntry(ec5efa29-6355-40c7-ada4-b534901242ab) // Boligområde
* insert ConditionEntry(47d82311-ba67-49c4-aacc-ab3b171b4524) // Personer i netværk
* insert ConditionEntry(3a0e2994-9f3f-44ab-a684-06bb85c7bf9d)  // Indgå i samspil og kontakt
* insert ConditionEntry(101f2519-adf9-43ba-b4f5-90f3917129c1)  // Varetage beskæftigelse
* insert ConditionEntry(e162f02a-6f82-4aed-97cd-a47a43c58413)  // Spise
* insert ConditionEntry(a2c6378d-66da-4aa8-b973-729687224ab0)  // Købe ind
* insert ConditionEntry(4908c9b2-fadc-4228-adbe-69ed9ef70ff3)  // Færdes med transportmidler
* insert ClinicalImpressionEntry(26d1a3de-0bd0-43d6-b52c-9c5687f01e45) // Information gathering

// --- Conditions ----------------------------------------------------------------------------------------------------

Instance: 57dc36db-56ce-4a4a-95e8-2d2c8a85871a
InstanceOf: KLReportingFFBCondition
Description: "Bevidsthedstilstand - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* code = $KLFFB#4934e45a-0f93-4c23-a767-2b681378700b
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: 00b972ba-0b06-4000-83f9-b733700c96e0
InstanceOf: KLReportingFFBCondition
Description: "Intellektuelle funktioner - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* code = $KLFFB#ef4271c4-f942-4194-a2b0-e9a7045eab22
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: 45b460b2-843e-48ec-8366-a3d184bf591f
InstanceOf: KLReportingFFBCondition
Description: "Problemløsning - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* code = $KLFFB#b93216fa-3843-4a7e-85bc-e3ef35a1967f
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: 5089bbd1-6ec1-4f4d-a83e-4a89f44c482e
InstanceOf: KLReportingFFBCondition
Description: "Syn - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* code = $KLFFB#9959e779-e8ee-47e8-989b-bbff4aae2883
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: 5b74d267-952d-487f-969a-68ea6a9aae39
InstanceOf: KLReportingFFBCondition
Description: "Døgnrytme - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* code = $KLFFB#e6f82424-da5a-41d1-bd1a-5796aa79d5f2
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: 6f77529a-d449-4e86-aaed-28b524090a32
InstanceOf: KLReportingFFBCondition
Description: "Tobak - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* code = $KLFFB#f5b8e809-7689-4952-838c-a069c99408b3
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: 6468d4a7-012e-4639-8dcf-dcec775385a0
InstanceOf: KLReportingFFBCondition
Description: "Interesser - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* code = $KLFFB#52efa2e9-e0dc-41eb-8c01-9865e2fdebae
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: b68548a8-b792-4aba-8358-b83a4e691b7c
InstanceOf: KLReportingFFBCondition
Description: "Familiesituation - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* code = $KLFFB#7a8f247b-baf8-4552-95bb-acf8ef004b74
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: ec5efa29-6355-40c7-ada4-b534901242ab
InstanceOf: KLReportingFFBCondition
Description: "Boligområde - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* code = $KLFFB#83342ff3-5f2e-4914-b045-e98357685866
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: 47d82311-ba67-49c4-aacc-ab3b171b4524
InstanceOf: KLReportingFFBCondition
Description: "Personer i netværk - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* code = $KLFFB#df194a84-6e4b-4f14-a194-d8d9d9a1fcad
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: 3a0e2994-9f3f-44ab-a684-06bb85c7bf9d
InstanceOf: KLReportingFFBCondition
Description: "Indgå i samspil og kontakt - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* severity = $KLFFB#5bdde847-2837-416b-ab63-bbff8b7aa531 // Moderat nedsat funktionsevne
* code = $KLFFB#3f9da5ac-9686-4eeb-b517-b46e17fcb1d7
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: 101f2519-adf9-43ba-b4f5-90f3917129c1
InstanceOf: KLReportingFFBCondition
Description: "Varetage beskæftigelse - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* severity = $KLFFB#8328ce4a-6238-4f73-bf1a-74aadb68eff8 // Let nedsat funktionsevne
* code = $KLFFB#685e8517-2f5c-4ef8-a7c4-fa2d008fdd9d
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: e162f02a-6f82-4aed-97cd-a47a43c58413
InstanceOf: KLReportingFFBCondition
Description: "Spise - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* severity = $KLFFB#cae545f5-2813-4d79-98fc-0a7d770af3cd // Svært nedsat funktionsevne
* code = $KLFFB#464a2ab6-a7df-4b3a-b74d-7873f4cfe668
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: a2c6378d-66da-4aa8-b973-729687224ab0
InstanceOf: KLReportingFFBCondition
Description: "Købe ind - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* severity = $KLFFB#5bdde847-2837-416b-ab63-bbff8b7aa531 // Moderat nedsat funktionsevne
* code = $KLFFB#01770afa-cd17-41fe-a966-b8895e4d55d8
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

Instance: 4908c9b2-fadc-4228-adbe-69ed9ef70ff3
InstanceOf: KLReportingFFBCondition
Description: "Færdes med transportmidler - 28/5"
Usage: #inline
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* severity = $KLFFB#cae545f5-2813-4d79-98fc-0a7d770af3cd // Svært nedsat funktionsevne
* code = $KLFFB#eff3385d-01fa-4c9c-9850-52e179243f21
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z

// --- InformationGathering ------------------------------------------------------------------------------------------

Instance: 26d1a3de-0bd0-43d6-b52c-9c5687f01e45
InstanceOf: KLReportingFFBInformationGathering
Description: "Børge Mogensen case - second encounter"
Usage: #inline
* extension[basedOnServiceRequest].valueReference = Reference(9947191b-270a-4f64-9b05-8be29e7f5c58)
* status = #in-progress
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* effectiveDateTime = 2021-05-26T13:04:04Z
* finding[+].itemReference = Reference(57dc36db-56ce-4a4a-95e8-2d2c8a85871a)  // Bevidsthedstilstand
* finding[+].itemReference = Reference(00b972ba-0b06-4000-83f9-b733700c96e0)  // Intellektuelle funktioner
* finding[+].itemReference = Reference(45b460b2-843e-48ec-8366-a3d184bf591f)  // Problemløsning
* finding[+].itemReference = Reference(5089bbd1-6ec1-4f4d-a83e-4a89f44c482e)  // Syn
* finding[+].itemReference = Reference(5b74d267-952d-487f-969a-68ea6a9aae39)  // Døgnrytme
* finding[+].itemReference = Reference(6f77529a-d449-4e86-aaed-28b524090a32)  // Tobak
* finding[+].itemReference = Reference(6468d4a7-012e-4639-8dcf-dcec775385a0)  // Interesser
* finding[+].itemReference = Reference(b68548a8-b792-4aba-8358-b83a4e691b7c)  // Familiesituation
* finding[+].itemReference = Reference(ec5efa29-6355-40c7-ada4-b534901242ab)  // Boligområde
* finding[+].itemReference = Reference(47d82311-ba67-49c4-aacc-ab3b171b4524)  // Personer i netværk
* finding[+].itemReference = Reference(3a0e2994-9f3f-44ab-a684-06bb85c7bf9d)  // Indgå i samspil og kontakt
* finding[+].itemReference = Reference(101f2519-adf9-43ba-b4f5-90f3917129c1)  // Varetage beskæftigelse
* finding[+].itemReference = Reference(e162f02a-6f82-4aed-97cd-a47a43c58413)  // Spise
* finding[+].itemReference = Reference(a2c6378d-66da-4aa8-b973-729687224ab0)  // Købe ind
* finding[+].itemReference = Reference(4908c9b2-fadc-4228-adbe-69ed9ef70ff3)  // Færdes med transportmidler

// ===================================================================================================================
// 3rd Encounter
// ===================================================================================================================

Instance: 4b4e5f33-a9a2-42f6-b598-180543029ae5
InstanceOf: KLReportingFFBDeliveryReport
Title: "3rd encounter"
Description: "3rd encounter / Third documentation phase – Case assesment"
* type = #collection
* timestamp = 2021-05-29T12:13:41Z
* insert CitizenEntry(da16c0a1-840a-46b0-98b3-761e4501b343)
* insert ServiceRequestEntry(9947191b-270a-4f64-9b05-8be29e7f5c58)
* insert ConditionEntry(57dc36db-56ce-4a4a-95e8-2d2c8a85871a) // Bevidsthedstilstand
* insert ConditionEntry(00b972ba-0b06-4000-83f9-b733700c96e0) // Intellektuelle funktioner
* insert ConditionEntry(45b460b2-843e-48ec-8366-a3d184bf591f) // Problemløsning
* insert ConditionEntry(5089bbd1-6ec1-4f4d-a83e-4a89f44c482e) // Syn
* insert ConditionEntry(5b74d267-952d-487f-969a-68ea6a9aae39) // Døgnrytme
* insert ConditionEntry(6f77529a-d449-4e86-aaed-28b524090a32) // Tobak
* insert ConditionEntry(6468d4a7-012e-4639-8dcf-dcec775385a0) // Interesser
* insert ConditionEntry(b68548a8-b792-4aba-8358-b83a4e691b7c) // Familiesituation
* insert ConditionEntry(ec5efa29-6355-40c7-ada4-b534901242ab) // Boligområde
* insert ConditionEntry(47d82311-ba67-49c4-aacc-ab3b171b4524) // Personer i netværk
* insert ConditionEntry(3a0e2994-9f3f-44ab-a684-06bb85c7bf9d)  // Indgå i samspil og kontakt
* insert ConditionEntry(101f2519-adf9-43ba-b4f5-90f3917129c1)  // Varetage beskæftigelse
* insert ConditionEntry(e162f02a-6f82-4aed-97cd-a47a43c58413)  // Spise
* insert ConditionEntry(a2c6378d-66da-4aa8-b973-729687224ab0)  // Købe ind
* insert ConditionEntry(4908c9b2-fadc-4228-adbe-69ed9ef70ff3)  // Færdes med transportmidler
* insert GoalEntry(83fdfed2-f182-4a11-8ea1-de8181e6eab9) // Fastholde - Indgå i samspil og kontakt
* insert GoalEntry(fcbf670a-f310-485b-b717-07c027c3c808) // Udvikle - Købe ind
* insert GoalEntry(90fa089a-1f80-40d0-96db-8e875e241b06) // Begrænse tab - Spise
* insert ClinicalImpressionEntryVersion(26d1a3de-0bd0-43d6-b52c-9c5687f01e45, v3)
* insert ObservationEntry(213d0504-1a41-4330-b9a0-347d3ba4bb2a) // Let støttebehov

// --- InterventionGoals ---------------------------------------------------------------------------------------------

Instance: 83fdfed2-f182-4a11-8ea1-de8181e6eab9
InstanceOf: KLReportingFFBInterventionGoal
Description: "Fastholde - Indgå i samspil og kontakt - 29/5"
Usage: #inline
* lifecycleStatus = $goalStatus#active
* description.coding = $snomedCT#410518001
* category = $KLCommon#0bb3daef-538d-45dc-b444-abdbcb63f6bc "FFB indsatsmål"
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* target[changeValueSlice].measure = $KLCommon#90c48f03-f194-4b2f-ad7d-6cba1069ae48
* target[changeValueSlice].detailCodeableConcept = $KLFFB#10752a63-00b4-4958-b7f4-9f3a18f74266 // Fastholde funktionsevne
* target[severitySlice].measure = $KLCommon#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target[severitySlice].detailCodeableConcept = $KLFFB#8328ce4a-6238-4f73-bf1a-74aadb68eff8 // Let nedsat funktionsevne
* addresses[+] = Reference(3a0e2994-9f3f-44ab-a684-06bb85c7bf9d)
* addresses[=].extension[ConditionRank].valuePositiveInt = 1
* addresses[+] = Reference(101f2519-adf9-43ba-b4f5-90f3917129c1)
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* addresses[+] = Reference(4908c9b2-fadc-4228-adbe-69ed9ef70ff3)
* addresses[=].extension[ConditionRank].valuePositiveInt = 2

Instance: fcbf670a-f310-485b-b717-07c027c3c808
InstanceOf: KLReportingFFBInterventionGoal
Description: "Udvikle - Købe ind - 29/5"
Usage: #inline
* lifecycleStatus = $goalStatus#active
* description.coding = $snomedCT#410518001
* category = $KLCommon#0bb3daef-538d-45dc-b444-abdbcb63f6bc "FFB indsatsmål"
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* target[changeValueSlice].measure = $KLCommon#90c48f03-f194-4b2f-ad7d-6cba1069ae48
* target[changeValueSlice].detailCodeableConcept = $KLFFB#d41c8072-52f8-42b5-9375-ddbea454d27f // Udvikle funktionsevne
* target[severitySlice].measure = $KLCommon#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target[severitySlice].detailCodeableConcept = $KLFFB#b508ff66-6326-4862-a6d7-7bbf184c9823 // Ingen nedsat funktionsevne
* addresses[+] = Reference(a2c6378d-66da-4aa8-b973-729687224ab0)
* addresses[=].extension[ConditionRank].valuePositiveInt = 1

Instance: 90fa089a-1f80-40d0-96db-8e875e241b06
InstanceOf: KLReportingFFBInterventionGoal
Description: "Begrænse tab - Spise - 29/5"
Usage: #inline
* lifecycleStatus = $goalStatus#active
* description.coding = $snomedCT#410518001
* category = $KLCommon#0bb3daef-538d-45dc-b444-abdbcb63f6bc "FFB indsatsmål"
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* target[changeValueSlice].measure = $KLCommon#90c48f03-f194-4b2f-ad7d-6cba1069ae48
* target[changeValueSlice].detailCodeableConcept = $KLFFB#e47c22bd-d88d-48ab-882b-419923e1f44e // Begrænse tab af funktionsevne
* target[severitySlice].measure = $KLCommon#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target[severitySlice].detailCodeableConcept = $KLFFB#cae545f5-2813-4d79-98fc-0a7d770af3cd // Svært nedsat funktionsevne
* addresses[+] = Reference(e162f02a-6f82-4aed-97cd-a47a43c58413)
* addresses[=].extension[ConditionRank].valuePositiveInt = 1

// --- InformationGathering v3 ---------------------------------------------------------------------------------------

Instance: 26d1a3de-0bd0-43d6-b52c-9c5687f01e45-v3 // Fake id
InstanceOf: KLReportingFFBInformationGathering
Description: "Børge Mogensen case - third encounter"
Usage: #inline
* id = "26d1a3de-0bd0-43d6-b52c-9c5687f01e45" // Real id
* extension[basedOnServiceRequest].valueReference = Reference(9947191b-270a-4f64-9b05-8be29e7f5c58)
* status = #completed
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* effectiveDateTime = 2021-05-29T11:54:13Z
* finding[+].itemReference = Reference(57dc36db-56ce-4a4a-95e8-2d2c8a85871a)  // Bevidsthedstilstand
* finding[+].itemReference = Reference(00b972ba-0b06-4000-83f9-b733700c96e0)  // Intellektuelle funktioner
* finding[+].itemReference = Reference(45b460b2-843e-48ec-8366-a3d184bf591f)  // Problemløsning
* finding[+].itemReference = Reference(5089bbd1-6ec1-4f4d-a83e-4a89f44c482e)  // Syn
* finding[+].itemReference = Reference(5b74d267-952d-487f-969a-68ea6a9aae39)  // Døgnrytme
* finding[+].itemReference = Reference(6f77529a-d449-4e86-aaed-28b524090a32)  // Tobak
* finding[+].itemReference = Reference(6468d4a7-012e-4639-8dcf-dcec775385a0)  // Interesser
* finding[+].itemReference = Reference(b68548a8-b792-4aba-8358-b83a4e691b7c)  // Familiesituation
* finding[+].itemReference = Reference(ec5efa29-6355-40c7-ada4-b534901242ab)  // Boligområde
* finding[+].itemReference = Reference(47d82311-ba67-49c4-aacc-ab3b171b4524)  // Personer i netværk
* finding[+].itemReference = Reference(3a0e2994-9f3f-44ab-a684-06bb85c7bf9d)  // Indgå i samspil og kontakt
* finding[+].itemReference = Reference(101f2519-adf9-43ba-b4f5-90f3917129c1)  // Varetage beskæftigelse
* finding[+].itemReference = Reference(e162f02a-6f82-4aed-97cd-a47a43c58413)  // Spise
* finding[+].itemReference = Reference(a2c6378d-66da-4aa8-b973-729687224ab0)  // Købe ind
* finding[+].itemReference = Reference(4908c9b2-fadc-4228-adbe-69ed9ef70ff3)  // Færdes med transportmidler
* investigation[+].item = Reference(213d0504-1a41-4330-b9a0-347d3ba4bb2a) // Let støttebehov
* investigation[=].code.coding = $KLCommon#effe55c7-572c-4a99-8fb4-2a9dda2f6572 "FFB støttebehovsvurdering"

// --- CarePlanEvaluation --------------------------------------------------------------------------------------------

Instance: 213d0504-1a41-4330-b9a0-347d3ba4bb2a
InstanceOf: KLReportingFFBCarePlanEvaluation
Description: "Støttebehovsvurdering for Børge Mogensen"
Usage: #inline
* status = $observationStatus#final
* code.coding = $KLCommon#effe55c7-572c-4a99-8fb4-2a9dda2f6572 "FFB støttebehovsvurdering"
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* valueCodeableConcept = $KLFFB#dd628e73-d6c9-4837-a2b8-aa62d73bd6ae // Let støttebehov
* effectiveDateTime = 2021-05-29T11:54:13Z

// ===================================================================================================================
// 4th Encounter
// ===================================================================================================================

// --- TargetGroups --------------------------------------------------------------------------------------------------

Instance: 76cecdcc-321c-479f-ae95-a8f020541650
InstanceOf: KLReportingFFBTargetGroup
Description: "Anden udviklingsforstyrrelse"
Usage: #inline
* code = $KLFFB#5cfc9530-a193-4f66-9981-3b980ee9ea7b
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-29

Instance: 18045390-e599-4b7a-95f2-287f41146975
InstanceOf: KLReportingFFBTargetGroup
Description: "Anden fysisk funktionsnedsættelse"
Usage: #inline
* code = $KLFFB#5cfc9530-a193-4f66-9981-3b980ee9ea7b
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-29

Instance: 787bb5e8-cb82-4e21-9459-285e5e14b814
InstanceOf: KLReportingFFBTargetGroup
Description: "Selvmordstanker eller -forsøg"
Usage: #inline
* code = $KLFFB#5e95db73-4d16-4084-93a3-595c0650b160
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-29

// ===================================================================================================================
// 5th Encounter
// ===================================================================================================================

Instance: 5bf6a186-ee66-4b0e-ba6e-623972ab5130
InstanceOf: KLReportingFFBDeliveryReport
Title: "5th encounter"
Description: "5th encounter / Fifth documentation phase – Case appropriation"
* type = #collection
* timestamp = 2021-05-29T17:13:41Z
* insert CitizenEntry(da16c0a1-840a-46b0-98b3-761e4501b343)
* insert ConditionEntry(76cecdcc-321c-479f-ae95-a8f020541650) // Anden udviklingsforstyrrelse
* insert ConditionEntry(18045390-e599-4b7a-95f2-287f41146975) // Anden fysisk funktionsnedsættelse
* insert ConditionEntry(787bb5e8-cb82-4e21-9459-285e5e14b814) // Selvmordstanker eller -forsøg
* insert ObservationEntry(213d0504-1a41-4330-b9a0-347d3ba4bb2a) // Let støttebehov
* insert CarePlanEntry(6ef8bead-fb42-4dbe-919f-e4a1f94135e2) // Støtte til daglige opgaver i hjemmet
* insert CarePlanEntry(b4ec722a-3cb4-4e9d-8a3b-58ebdb329361) // Støtte til sund levevis
* insert CarePlanEntry(e9374e0c-fea8-48d5-a545-6f893d527e98) // Social aktivitet
* insert CareTeamEntry(31a46e2d-0d54-4600-8ecb-1b239749cfd1) // Almindeligt længerevarende botilbud til voksne
* insert CareTeamEntry(9f4982de-34fd-440b-9980-fa72b51673eb) // Aktivitets- og samværstilbud
* insert EncounterEntry(ef6a3536-ecaa-49c5-ace1-53e19acb4cd1) // FollowUp on 29/8-2021
* insert CarePlanEntry(944c7c24-37b4-455e-9319-cd9f35a7aec9) // Botilbud
* insert CarePlanEntry(8ea1d7f3-3c40-4826-bf35-d16b313610d4) // Dagtilbud

// --- CareTeams -----------------------------------------------------------------------------------------------------
Instance: 31a46e2d-0d54-4600-8ecb-1b239749cfd1
InstanceOf: KLReportingFFBServicePerformer
Description: "Almindeligt længerevarende botilbud til voksne"
Usage: #inline
* category = $KLFFB#498fe92c-d7f7-41cd-9404-5b38fe113be0 // Almindeligt længerevarende botilbud til voksne
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)

Instance: 9f4982de-34fd-440b-9980-fa72b51673eb
InstanceOf: KLReportingFFBServicePerformer
Description: "Aktivitets- og samværstilbud"
Usage: #inline
* category = $KLFFB#9401777d-bdc5-4f52-9804-63c8cae9a792 // Aktivitets- og samværstilbud
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)

// --- CarePlans -----------------------------------------------------------------------------------------------------

Instance: 944c7c24-37b4-455e-9319-cd9f35a7aec9
InstanceOf: KLReportingFFBCarePlan
Description: "Børge Mogensen - Care Plan - Botilbud"
Usage: #inline
* extension[municipalityCaseNumber].extension[municipalitySpecific].valueIdentifier
  * system = "http://example.dk/identifier/case"
  * value = "Sag154689"
* extension[followUpDate].valueReference = Reference(ef6a3536-ecaa-49c5-ace1-53e19acb4cd1) // FollowUp on 29/8-2021
* status = $requestStatus#active
* intent = $requestIntent#plan
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* period.start = 2021-05-29
* careTeam[+] = Reference(31a46e2d-0d54-4600-8ecb-1b239749cfd1) // Almindeligt længerevarende botilbud til voksne
* addresses[+] = Reference(76cecdcc-321c-479f-ae95-a8f020541650) // Anden udviklingsforstyrrelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 1
* addresses[+] = Reference(18045390-e599-4b7a-95f2-287f41146975) // Anden fysisk funktionsnedsættelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* addresses[+] = Reference(787bb5e8-cb82-4e21-9459-285e5e14b814) // Selvmordstanker eller -forsøg
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* activity.outcomeReference = Reference(213d0504-1a41-4330-b9a0-347d3ba4bb2a) // Let støttebehov

Instance: 8ea1d7f3-3c40-4826-bf35-d16b313610d4
InstanceOf: KLReportingFFBCarePlan
Description: "Børge Mogensen - Care Plan - Dagtilbud"
Usage: #inline
* extension[municipalityCaseNumber].extension[municipalitySpecific].valueIdentifier
  * system = "http://example.dk/identifier/case"
  * value = "Sag154689"
* extension[followUpDate].valueReference = Reference(ef6a3536-ecaa-49c5-ace1-53e19acb4cd1) // FollowUp on 29/8-2021
* status = $requestStatus#active
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* period.start = 2021-05-29
* careTeam[+] = Reference(9f4982de-34fd-440b-9980-fa72b51673eb) // Aktivitets- og samværstilbud
* addresses[+] = Reference(76cecdcc-321c-479f-ae95-a8f020541650) // Anden udviklingsforstyrrelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 1
* addresses[+] = Reference(18045390-e599-4b7a-95f2-287f41146975) // Anden fysisk funktionsnedsættelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* addresses[+] = Reference(787bb5e8-cb82-4e21-9459-285e5e14b814) // Selvmordstanker eller -forsøg
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* activity.outcomeReference = Reference(213d0504-1a41-4330-b9a0-347d3ba4bb2a)

// --- FollowUpEncounter ---------------------------------------------------------------------------------------------

Instance: ef6a3536-ecaa-49c5-ace1-53e19acb4cd1
InstanceOf: KLReportingFFBFollowUpEncounter
Description: "Opfølgning på Børge Mogensen"
Usage: #inline
* status = #planned
* class = $v3ActCode#HH
* type.coding = $KLCommon#9f03dfbb-7a97-45a5-94db-d4c3501714a9
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* period.start = 2021-08-29

// --- Interventions -------------------------------------------------------------------------------------------------

Instance: 6ef8bead-fb42-4dbe-919f-e4a1f94135e2
InstanceOf: KLReportingFFBIntervention
Description: "Støtte til daglige opgaver i hjemmet"
Usage: #inline
* basedOn = Reference(944c7c24-37b4-455e-9319-cd9f35a7aec9)
* status = $requestStatus#active
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* created = 2021-05-29T16:10:23Z
* period.start = 2021-05-29
* activity.detail.code = $KLFFB#638f44df-6bf2-47f8-9935-b8fdc83e5bf5
* activity.detail.status = $carePlanActivityStatus#in-progress

Instance: b4ec722a-3cb4-4e9d-8a3b-58ebdb329361
InstanceOf: KLReportingFFBIntervention
Description: "Støtte til sund levevis"
Usage: #inline
* basedOn = Reference(944c7c24-37b4-455e-9319-cd9f35a7aec9)
* status = $requestStatus#active
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* created = 2021-05-29T16:10:23Z
* period.start = 2021-05-29
* activity.detail.code = $KLFFB#3c1639d0-e486-43c6-8add-448b8aff4b8f
* activity.detail.status = $carePlanActivityStatus#in-progress

Instance: e9374e0c-fea8-48d5-a545-6f893d527e98
InstanceOf: KLReportingFFBIntervention
Description: "Social aktivitet"
Usage: #inline
* basedOn = Reference(8ea1d7f3-3c40-4826-bf35-d16b313610d4)
* status = $requestStatus#active
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* created = 2021-05-29T16:10:23Z
* period.start = 2021-05-29
* activity.detail.code = $KLFFB#7e419926-bb04-4829-99c9-95ea20403c2c
* activity.detail.status = $carePlanActivityStatus#in-progress


// ===================================================================================================================
// 6th Encounter
// ===================================================================================================================

Instance: aaa5d153-968e-46ec-9f9e-cfc6e93a3f1b
InstanceOf: KLReportingFFBDeliveryReport
Title: "6th encounter"
Description: "6th encounter / Sixth documentation phase – Case delivery"
* type = #collection
* timestamp = 2021-06-18T16:53:11Z
* insert CitizenEntry(da16c0a1-840a-46b0-98b3-761e4501b343)
* insert ServiceRequestEntry(9947191b-270a-4f64-9b05-8be29e7f5c58)
* insert ConditionEntry(57dc36db-56ce-4a4a-95e8-2d2c8a85871a) // Bevidsthedstilstand
* insert ConditionEntry(00b972ba-0b06-4000-83f9-b733700c96e0) // Intellektuelle funktioner
* insert ConditionEntry(45b460b2-843e-48ec-8366-a3d184bf591f) // Problemløsning
* insert ConditionEntry(5089bbd1-6ec1-4f4d-a83e-4a89f44c482e) // Syn
* insert ConditionEntry(5b74d267-952d-487f-969a-68ea6a9aae39) // Døgnrytme
* insert ConditionEntry(6f77529a-d449-4e86-aaed-28b524090a32) // Tobak
* insert ConditionEntry(6468d4a7-012e-4639-8dcf-dcec775385a0) // Interesser
* insert ConditionEntry(b68548a8-b792-4aba-8358-b83a4e691b7c) // Familiesituation
* insert ConditionEntry(ec5efa29-6355-40c7-ada4-b534901242ab) // Boligområde
* insert ConditionEntry(47d82311-ba67-49c4-aacc-ab3b171b4524) // Personer i netværk
* insert ConditionEntryVersion(3a0e2994-9f3f-44ab-a684-06bb85c7bf9d, v2)  // Indgå i samspil og kontakt
* insert ConditionEntry(101f2519-adf9-43ba-b4f5-90f3917129c1)  // Varetage beskæftigelse
* insert ConditionEntry(e162f02a-6f82-4aed-97cd-a47a43c58413)  // Spise
* insert ConditionEntry(a2c6378d-66da-4aa8-b973-729687224ab0)  // Købe ind
* insert ConditionEntry(4908c9b2-fadc-4228-adbe-69ed9ef70ff3)  // Færdes med transportmidler
* insert ClinicalImpressionEntry(96a38e6e-3fe4-4773-a7c7-ded60607d259)
* insert ConditionEntry(76cecdcc-321c-479f-ae95-a8f020541650) // Anden udviklingsforstyrrelse
* insert ConditionEntry(18045390-e599-4b7a-95f2-287f41146975) // Anden fysisk funktionsnedsættelse
* insert ConditionEntry(787bb5e8-cb82-4e21-9459-285e5e14b814) // Selvmordstanker eller -forsøg
* insert ObservationEntry(213d0504-1a41-4330-b9a0-347d3ba4bb2a) // Let støttebehov
* insert GoalEntry(76b9d91b-4b28-4c4a-944c-aa16b8cca82c) // Udvikle - Indgå i samspil og kontakt
* insert CarePlanEntryVersion(e9374e0c-fea8-48d5-a545-6f893d527e98, v2) // Social aktivitet
* insert CarePlanEntry(629c659a-8be2-44e9-a852-3efa2d95f856) // Kompetenceudviklende aktivitet
* insert CareTeamEntry(31a46e2d-0d54-4600-8ecb-1b239749cfd1) // Almindeligt længerevarende botilbud til voksne
* insert CareTeamEntry(9f4982de-34fd-440b-9980-fa72b51673eb) // Aktivitets- og samværstilbud
* insert EncounterEntry(ef6a3536-ecaa-49c5-ace1-53e19acb4cd1) // FollowUp on 29/8-2021
* insert ObservationEntry(a03a8641-e845-45c3-a7a9-16bf077af069) // Follow-up result on Botilbud
* insert ObservationEntry(e20ebaba-0622-43f5-ad55-7d56eb750ff3) // Follow-up result on Dagtilbud
* insert CarePlanEntry(944c7c24-37b4-455e-9319-cd9f35a7aec9) // Botilbud
* insert CarePlanEntryVersion(8ea1d7f3-3c40-4826-bf35-d16b313610d4, v2) // Previous Dagtilbud 
* insert CarePlanEntry(d54a2bb0-4fdc-4ea8-adaf-1241836a94f5) // New Dagtilbud

// --- Conditions -----------------------------------------------------------------------------------------------------

Instance: 3a0e2994-9f3f-44ab-a684-06bb85c7bf9d-v2
InstanceOf: KLReportingFFBCondition
Description: "Indgå i samspil og kontakt - 18/6"
Usage: #inline
* id = "3a0e2994-9f3f-44ab-a684-06bb85c7bf9d" // Real id
* clinicalStatus = $conditionClinical#active
* verificationStatus = $conditionVerStatus#confirmed
* severity = $KLFFB#5bdde847-2837-416b-ab63-bbff8b7aa531 // Moderat nedsat funktionsevne
* code = $KLFFB#3f9da5ac-9686-4eeb-b517-b46e17fcb1d7
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* recordedDate = 2021-05-28T09:17:33Z
* extension[conditionLastAssertedDate].valueDateTime = 2021-06-18

// --- InformationGathering -------------------------------------------------------------------------------------------

Instance: 96a38e6e-3fe4-4773-a7c7-ded60607d259
InstanceOf: KLReportingFFBInformationGathering
Description: "Børge Mogensen case - third encounter"
Usage: #inline
* extension[basedOnServiceRequest].valueReference = Reference(9947191b-270a-4f64-9b05-8be29e7f5c58)
* status = #in-progress
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* effectiveDateTime = 2021-06-18T16:53:11Z
* finding[+].itemReference = Reference(57dc36db-56ce-4a4a-95e8-2d2c8a85871a)  // Bevidsthedstilstand
* finding[+].itemReference = Reference(00b972ba-0b06-4000-83f9-b733700c96e0)  // Intellektuelle funktioner
* finding[+].itemReference = Reference(45b460b2-843e-48ec-8366-a3d184bf591f)  // Problemløsning
* finding[+].itemReference = Reference(5089bbd1-6ec1-4f4d-a83e-4a89f44c482e)  // Syn
* finding[+].itemReference = Reference(5b74d267-952d-487f-969a-68ea6a9aae39)  // Døgnrytme
* finding[+].itemReference = Reference(6f77529a-d449-4e86-aaed-28b524090a32)  // Tobak
* finding[+].itemReference = Reference(6468d4a7-012e-4639-8dcf-dcec775385a0)  // Interesser
* finding[+].itemReference = Reference(b68548a8-b792-4aba-8358-b83a4e691b7c)  // Familiesituation
* finding[+].itemReference = Reference(ec5efa29-6355-40c7-ada4-b534901242ab)  // Boligområde
* finding[+].itemReference = Reference(47d82311-ba67-49c4-aacc-ab3b171b4524)  // Personer i netværk
* finding[+].itemReference = Reference(3a0e2994-9f3f-44ab-a684-06bb85c7bf9d)  // Indgå i samspil og kontakt
* finding[+].itemReference = Reference(101f2519-adf9-43ba-b4f5-90f3917129c1)  // Varetage beskæftigelse
* finding[+].itemReference = Reference(e162f02a-6f82-4aed-97cd-a47a43c58413)  // Spise
* finding[+].itemReference = Reference(a2c6378d-66da-4aa8-b973-729687224ab0)  // Købe ind
* finding[+].itemReference = Reference(4908c9b2-fadc-4228-adbe-69ed9ef70ff3)  // Færdes med transportmidler

// --- InterventionGoal -----------------------------------------------------------------------------------------------

Instance: 76b9d91b-4b28-4c4a-944c-aa16b8cca82c
InstanceOf: KLReportingFFBInterventionGoal
Description: "Udvikle - Indgå i samspil og kontakt - 18/6"
Usage: #inline
* lifecycleStatus = $goalStatus#active
* description.coding = $snomedCT#410518001
* category = $KLCommon#0bb3daef-538d-45dc-b444-abdbcb63f6bc "FFB indsatsmål"
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* target[changeValueSlice].measure = $KLCommon#90c48f03-f194-4b2f-ad7d-6cba1069ae48
* target[changeValueSlice].detailCodeableConcept = $KLFFB#d41c8072-52f8-42b5-9375-ddbea454d27f // Udvikle funktionsevne
* target[severitySlice].measure = $KLCommon#66959f77-6e2a-4574-8423-3ff097f8b9fa
* target[severitySlice].detailCodeableConcept = $KLFFB#b508ff66-6326-4862-a6d7-7bbf184c9823 // Ingen nedsat funktionsevne
* addresses[+] = Reference(3a0e2994-9f3f-44ab-a684-06bb85c7bf9d)
* addresses[=].extension[ConditionRank].valuePositiveInt = 1
* addresses[+] = Reference(101f2519-adf9-43ba-b4f5-90f3917129c1)
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* addresses[+] = Reference(4908c9b2-fadc-4228-adbe-69ed9ef70ff3)
* addresses[=].extension[ConditionRank].valuePositiveInt = 2

// --- Intervention ---------------------------------------------------------------------------------------------------
Instance: e9374e0c-fea8-48d5-a545-6f893d527e98-v2 // Fake id
InstanceOf: KLReportingFFBIntervention
Description: "Social aktivitet"
Usage: #inline
* id = "e9374e0c-fea8-48d5-a545-6f893d527e98" // Real id
* basedOn = Reference(944c7c24-37b4-455e-9319-cd9f35a7aec9)
* status = $requestStatus#active
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* created = 2021-05-29T16:10:23Z
* period.start = 2021-05-29
* period.end = 2021-06-18
* activity.detail.code = $KLFFB#7e419926-bb04-4829-99c9-95ea20403c2c
* activity.detail.status = $carePlanActivityStatus#in-progress

Instance: 629c659a-8be2-44e9-a852-3efa2d95f856
InstanceOf: KLReportingFFBIntervention
Description: "Kompetenceudviklende aktivitet"
Usage: #inline
* basedOn = Reference(d54a2bb0-4fdc-4ea8-adaf-1241836a94f5)
* status = $requestStatus#active
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* created = 2021-06-18T15:04:47Z
* period.start = 2021-06-18
* activity.detail.code = $KLFFB#f25674bf-3162-45c3-bde4-6d542bf9629b
* activity.detail.status = $carePlanActivityStatus#in-progress

// --- Follow-up -----------------------------------------------------------------------------------------------------
Instance: a03a8641-e845-45c3-a7a9-16bf077af069
InstanceOf: KLReportingFFBFollowUp
Description: "Follow-up result - Continue Botilbud"
Usage: #inline
* status = #final
* code.coding = $snomedCT#712744002
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* focus = Reference(944c7c24-37b4-455e-9319-cd9f35a7aec9)
* effectiveDateTime = 2021-06-18
* valueCodeableConcept = $KLFFB#1e971d84-10a4-4ef8-a8b3-0daa4c7d088a	"Træf afgørelse om fortsættelse af indsats"

Instance: e20ebaba-0622-43f5-ad55-7d56eb750ff3
InstanceOf: KLReportingFFBFollowUp
Description: "Follow-up result - Change Dagtilbud"
Usage: #inline
* status = #final
* code.coding = $snomedCT#712744002
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* focus = Reference(8ea1d7f3-3c40-4826-bf35-d16b313610d4)
* effectiveDateTime = 2021-06-18
* valueCodeableConcept = $KLFFB#b4c01aa8-82fd-44e4-83ff-ca19ec02c779	"Træf afgørelse om afslutning af indsats og visiter til ny"

// --- CarePlan ------------------------------------------------------------------------------------------------------
Instance: 8ea1d7f3-3c40-4826-bf35-d16b313610d4-v2 // Fake id
InstanceOf: KLReportingFFBCarePlan
Description: "Børge Mogensen - Care Plan - Dagtilbud"
Usage: #inline
* id = "8ea1d7f3-3c40-4826-bf35-d16b313610d4" // Real id
* extension[municipalityCaseNumber].extension[municipalitySpecific].valueIdentifier
  * system = "http://example.dk/identifier/case"
  * value = "Sag154689"
* status = $requestStatus#completed
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* period.start = 2021-05-29
* period.end = 2021-06-18
* careTeam[+] = Reference(9f4982de-34fd-440b-9980-fa72b51673eb) // Aktivitets- og samværstilbud
* addresses[+] = Reference(76cecdcc-321c-479f-ae95-a8f020541650) // Anden udviklingsforstyrrelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 1
* addresses[+] = Reference(18045390-e599-4b7a-95f2-287f41146975) // Anden fysisk funktionsnedsættelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* addresses[+] = Reference(787bb5e8-cb82-4e21-9459-285e5e14b814) // Selvmordstanker eller -forsøg
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* activity.outcomeReference = Reference(213d0504-1a41-4330-b9a0-347d3ba4bb2a) // Let støttebehov

Instance: d54a2bb0-4fdc-4ea8-adaf-1241836a94f5
InstanceOf: KLReportingFFBCarePlan
Description: "Børge Mogensen - Care Plan - New Dagtilbud"
Usage: #inline
* extension[municipalityCaseNumber].extension[municipalitySpecific].valueIdentifier
  * system = "http://example.dk/identifier/case"
  * value = "Sag154689"
* extension[followUpDate].valueReference = Reference(ef6a3536-ecaa-49c5-ace1-53e19acb4cd1) // FollowUp on 29/8-2021
* status = $requestStatus#active
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* period.start = 2021-06-18
* careTeam[+] = Reference(9f4982de-34fd-440b-9980-fa72b51673eb) // Aktivitets- og samværstilbud
* addresses[+] = Reference(76cecdcc-321c-479f-ae95-a8f020541650) // Anden udviklingsforstyrrelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 1
* addresses[+] = Reference(18045390-e599-4b7a-95f2-287f41146975) // Anden fysisk funktionsnedsættelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* addresses[+] = Reference(787bb5e8-cb82-4e21-9459-285e5e14b814) // Selvmordstanker eller -forsøg
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* activity.outcomeReference = Reference(213d0504-1a41-4330-b9a0-347d3ba4bb2a) // Let støttebehov

// ===================================================================================================================
// 7th Encounter
// ===================================================================================================================

Instance: ae9cdbef-ca35-4dae-b5df-ffd938cf0098
InstanceOf: KLReportingFFBDeliveryReport
Title: "7th encounter"
Description: "7th encounter / Seventh documentation phase – Case evaluation"
* type = #collection
* timestamp = 2021-08-30T18:03:31Z
* insert CitizenEntry(da16c0a1-840a-46b0-98b3-761e4501b343)
* insert ServiceRequestEntry(9947191b-270a-4f64-9b05-8be29e7f5c58)
* insert ClinicalImpressionEntry(753cbc43-8364-45be-9c21-cdb345e227ef)
* insert CarePlanEntryVersion(6ef8bead-fb42-4dbe-919f-e4a1f94135e2, v2) // Støtte til daglige opgaver i hjemmet
* insert CarePlanEntryVersion(b4ec722a-3cb4-4e9d-8a3b-58ebdb329361, v2) // Støtte til sund levevis
* insert CarePlanEntryVersion(629c659a-8be2-44e9-a852-3efa2d95f856, v2) // Kompetenceudviklende aktivitet
* insert ObservationEntry(e548c437-05e2-43d9-836f-5d3b4f8e331f) // Intet støttebehov
* insert ConditionEntry(76cecdcc-321c-479f-ae95-a8f020541650) // Anden udviklingsforstyrrelse
* insert ConditionEntry(18045390-e599-4b7a-95f2-287f41146975) // Anden fysisk funktionsnedsættelse
* insert ConditionEntry(787bb5e8-cb82-4e21-9459-285e5e14b814) // Selvmordstanker eller -forsøg
* insert CareTeamEntry(31a46e2d-0d54-4600-8ecb-1b239749cfd1) // Almindeligt længerevarende botilbud til voksne
* insert CareTeamEntry(9f4982de-34fd-440b-9980-fa72b51673eb) // Aktivitets- og samværstilbud
* insert CarePlanEntryVersion(944c7c24-37b4-455e-9319-cd9f35a7aec9, v2)

// --- InformationGathering ------------------------------------------------------------------------------------------

Instance: 753cbc43-8364-45be-9c21-cdb345e227ef
InstanceOf: KLReportingFFBInformationGathering
Description: "Børge Mogensen case - new assessment"
Usage: #inline
* extension[basedOnServiceRequest].valueReference = Reference(9947191b-270a-4f64-9b05-8be29e7f5c58)
* status = #completed
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* effectiveDateTime = 2021-05-26T13:04:04Z
* investigation[+].item = Reference(e548c437-05e2-43d9-836f-5d3b4f8e331f) // Intet støttebehov
* investigation[=].code.coding = $KLCommon#effe55c7-572c-4a99-8fb4-2a9dda2f6572 "FFB støttebehovsvurdering"

// --- Interventions -------------------------------------------------------------------------------------------------

Instance: 6ef8bead-fb42-4dbe-919f-e4a1f94135e2-v2 // Fake id
InstanceOf: KLReportingFFBIntervention
Description: "Støtte til daglige opgaver i hjemmet"
Usage: #inline
* id = "6ef8bead-fb42-4dbe-919f-e4a1f94135e2" // Real id
* basedOn = Reference(944c7c24-37b4-455e-9319-cd9f35a7aec9)
* status = $requestStatus#active
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* created = 2021-05-29T16:10:23Z
* period.start = 2021-05-29
* period.end = 2021-08-30
* activity.detail.code = $KLFFB#638f44df-6bf2-47f8-9935-b8fdc83e5bf5
* activity.detail.status = $carePlanActivityStatus#in-progress

Instance: b4ec722a-3cb4-4e9d-8a3b-58ebdb329361-v2 // Fake id
InstanceOf: KLReportingFFBIntervention
Description: "Støtte til sund levevis"
Usage: #inline
* id = "b4ec722a-3cb4-4e9d-8a3b-58ebdb329361" // Real id
* basedOn = Reference(944c7c24-37b4-455e-9319-cd9f35a7aec9)
* status = $requestStatus#active
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* created = 2021-05-29T16:10:23Z
* period.start = 2021-05-29
* period.end = 2021-08-30
* activity.detail.code = $KLFFB#3c1639d0-e486-43c6-8add-448b8aff4b8f
* activity.detail.status = $carePlanActivityStatus#in-progress

Instance: 629c659a-8be2-44e9-a852-3efa2d95f856-v2 // Fake id
InstanceOf: KLReportingFFBIntervention
Description: "Kompetenceudviklende aktivitet"
Usage: #inline
* id = "629c659a-8be2-44e9-a852-3efa2d95f856" // Real id
* basedOn = Reference(944c7c24-37b4-455e-9319-cd9f35a7aec9)
* status = $requestStatus#active
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* created = 2021-06-18T15:04:47Z
* period.start = 2021-06-18
* period.end = 2021-08-30
* activity.detail.code = $KLFFB#f25674bf-3162-45c3-bde4-6d542bf9629b
* activity.detail.status = $carePlanActivityStatus#in-progress

// --- CarePlanEvaluation --------------------------------------------------------------------------------------------

Instance: e548c437-05e2-43d9-836f-5d3b4f8e331f
InstanceOf: KLReportingFFBCarePlanEvaluation
Description: "Ny støttebehovsvurdering for Børge Mogensen - 30/8"
Usage: #inline
* status = $observationStatus#final
* code.coding = $KLCommon#effe55c7-572c-4a99-8fb4-2a9dda2f6572 "FFB støttebehovsvurdering"
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* valueCodeableConcept = $KLFFB#ae9f388a-91c3-46cf-af55-f81952f2977c // Intet støttebehov
* effectiveDateTime = 2021-08-30T11:45:33Z

// --- CarePlan ------------------------------------------------------------------------------------------------------

Instance: 944c7c24-37b4-455e-9319-cd9f35a7aec9-v2 // Fake id
InstanceOf: KLReportingFFBCarePlan
Description: "Børge Mogensen - Care Plan"
Usage: #inline
* id = "944c7c24-37b4-455e-9319-cd9f35a7aec9" // Real id
* extension[municipalityCaseNumber].extension[municipalitySpecific].valueIdentifier
  * system = "http://example.dk/identifier/case"
  * value = "Sag154689"
* status = $requestStatus#completed
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* period.start = 2021-05-29
* period.end = 2021-08-30
* careTeam[+] = Reference(31a46e2d-0d54-4600-8ecb-1b239749cfd1) // Almindeligt længerevarende botilbud til voksne
* addresses[+] = Reference(76cecdcc-321c-479f-ae95-a8f020541650) // Anden udviklingsforstyrrelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 1
* addresses[+] = Reference(18045390-e599-4b7a-95f2-287f41146975) // Anden fysisk funktionsnedsættelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* addresses[+] = Reference(787bb5e8-cb82-4e21-9459-285e5e14b814) // Selvmordstanker eller -forsøg
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* activity.outcomeReference = Reference(e548c437-05e2-43d9-836f-5d3b4f8e331f) // Intet støttebehov

Instance: d54a2bb0-4fdc-4ea8-adaf-1241836a94f5-v2 // Fake-id
InstanceOf: KLReportingFFBCarePlan
Description: "Børge Mogensen - Care Plan - New Dagtilbud"
Usage: #inline
* id = "d54a2bb0-4fdc-4ea8-adaf-1241836a94f5" // Real id
* extension[municipalityCaseNumber].extension[municipalitySpecific].valueIdentifier
  * system = "http://example.dk/identifier/case"
  * value = "Sag154689"
* status = $requestStatus#completed
* intent = $requestIntent#order
* subject = Reference(da16c0a1-840a-46b0-98b3-761e4501b343)
* period.start = 2021-06-18
* period.end = 2021-08-30
* careTeam[+] = Reference(9f4982de-34fd-440b-9980-fa72b51673eb) // Aktivitets- og samværstilbud
* addresses[+] = Reference(76cecdcc-321c-479f-ae95-a8f020541650) // Anden udviklingsforstyrrelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 1
* addresses[+] = Reference(18045390-e599-4b7a-95f2-287f41146975) // Anden fysisk funktionsnedsættelse
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* addresses[+] = Reference(787bb5e8-cb82-4e21-9459-285e5e14b814) // Selvmordstanker eller -forsøg
* addresses[=].extension[ConditionRank].valuePositiveInt = 2
* activity.outcomeReference = Reference(e548c437-05e2-43d9-836f-5d3b4f8e331f) // Intet støttebehov
