
#Remove the specific values from the marketplace block and add in specific access and data connectors from the client
################ Constants ################

constant: RECOMMENDATION_TABLE {
  value: "instance.recommender.recommendations_export_v2"
  export: override_optional
}

constant: BILLING_TABLE {
  value: "TEST"
  export: override_optional
}

constant: PRICING_TABLE {
  value: "TEST"
  export: override_optional
}

constant: CONNECTION {
  value: "TEST"
  export: override_optional
}
