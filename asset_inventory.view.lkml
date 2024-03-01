view: assets_inventory {
  sql_table_name: `TABLE`
    ;;

  dimension: ancestors {
    hidden: yes
    sql: ${TABLE}.ancestors ;;
  }

  dimension: asset_type {
    type: string
    sql: ${TABLE}.asset_type ;;
  }

  dimension: name {
    hidden: no
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension_group: used {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.readTime ;;
  }

  dimension_group: create {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.requestTime ;;
  }

  dimension: resource__data {
    #hidden: yes
    type: string
    sql: ${TABLE}.resource.data ;;
    group_label: "Resource"
    group_item_label: "Data"
  }

  dimension: resource__discovery_document_uri {
    #hidden: yes
    type: string
    sql: ${TABLE}.resource.discovery_document_uri ;;
    group_label: "Resource"
    group_item_label: "Discovery Document URI"
  }

  dimension: resource__discovery_name {
    type: string
    sql: ${TABLE}.resource.discovery_name ;;
    #group_label: "Resource"
    #group_item_label: "Discovery Name"
    label: "Asset Name"
  }

  dimension: resource__location {
    type: string
    sql: ${TABLE}.resource.location ;;
    #group_label: "Resource"
    #group_item_label: "Location"
    label: "Region"
  }

  dimension: resource__parent {
    type: string
    sql: ${TABLE}.resource.parent ;;
    group_label: "Resource"
    group_item_label: "Parent"
  }

  dimension: resource__resource_url {
    type: string
    hidden: yes
    sql: ${TABLE}.resource.resource_url ;;
    group_label: "Resource"
    group_item_label: "Resource URL"
  }

  dimension: resource__version {
    #hidden: yes
    type: string
    sql: ${TABLE}.resource.version ;;
    group_label: "Resource"
    group_item_label: "Version"
  }

  dimension_group: update {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.update_time ;;
  }

 dimension: project_id {
  label: "Project ID"
   type: string
   sql:  REGEXP_EXTRACT(${name}, r'projects/([^/]+)');;
   }

  measure: count {
    type: count
    drill_fields: [name, resource__discovery_name]
  }
}



#view: assets_inventory_resource_vw__ancestors {
#  dimension: assets_inventory_resource_vw__ancestors {
#    type: string
#    sql: assets_inventory_resource_vw__ancestors ;;
#  }
#}
