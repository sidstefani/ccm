datagroup: billing_datagroup {
  sql_trigger: select max(export_time) from `@{BILLING_TABLE}`;;
  description: "Triggers a rebuild when new data is exported"
}

datagroup: pricing_datagroup {
  sql_trigger: select max(export_time) from `@{PRICING_TABLE}`;;
  description: "Triggers a rebuild when new data is exported"
}

datagroup: daily_datagroup {
  sql_trigger: select CURRENT_DATE() ;;
  description: "Triggers a rebuild every day at midnight UTC"
}
