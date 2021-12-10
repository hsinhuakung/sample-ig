RuleSet: CitizenEntry(instance)
* entry[+].fullUrl = "Patient/{instance}"
* entry[=].resource = {instance}

RuleSet: ConditionEntry(instance)
* entry[+].fullUrl = "Condition/{instance}"
* entry[=].resource = {instance}

// Assumes fake id <guid>-<version>
RuleSet: ConditionEntryVersion(instance, version)
* entry[+].fullUrl = "Condition/{instance}"
* entry[=].resource = {instance}-{version}

RuleSet: ClinicalImpressionEntry(instance)
* entry[+].fullUrl = "ClinicalImpression/{instance}"
* entry[=].resource = {instance}

// Assumes fake id <guid>-<version>
RuleSet: ClinicalImpressionEntryVersion(instance, version)
* entry[+].fullUrl = "ClinicalImpression/{instance}"
* entry[=].resource = {instance}-{version}

RuleSet: ServiceRequestEntry(instance)
* entry[+].fullUrl = "ServiceRequest/{instance}"
* entry[=].resource = {instance}

RuleSet: GoalEntry(instance)
* entry[+].fullUrl = "Goal/{instance}"
* entry[=].resource = {instance}

RuleSet: CarePlanEntry(instance)
* entry[+].fullUrl = "CarePlan/{instance}"
* entry[=].resource = {instance}

// Assumes fake id <guid>-<version>
RuleSet: CarePlanEntryVersion(instance, version)
* entry[+].fullUrl = "CarePlan/{instance}"
* entry[=].resource = {instance}-{version}

RuleSet: ObservationEntry(instance)
* entry[+].fullUrl = "Observation/{instance}"
* entry[=].resource = {instance}

RuleSet: CareTeamEntry(instance)
* entry[+].fullUrl = "CareTeam/{instance}"
* entry[=].resource = {instance}

RuleSet: EncounterEntry(instance)
* entry[+].fullUrl = "Encounter/{instance}"
* entry[=].resource = {instance}
