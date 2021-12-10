Extension:  KLReportingFFBFollowUpDateExtension
Id: kl-reporting-ffb-follow-up-date-extension
Title: "FollowUpDateExtension"
Description: "Reference to encounter with date for following up on this information."
* value[x] 1..
* value[x] only Reference(kl-reporting-ffb-followUpEncounter)
* value[x] ^type.aggregation = #bundled