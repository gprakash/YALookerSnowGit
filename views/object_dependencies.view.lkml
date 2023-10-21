view: object_dependencies {
  sql_table_name: "ACCOUNT_USAGE"."OBJECT_DEPENDENCIES" ;;

  dimension: dependency_type {
    type: string
    sql: ${TABLE}."DEPENDENCY_TYPE" ;;
  }
  dimension: referenced_database {
    type: string
    sql: ${TABLE}."REFERENCED_DATABASE" ;;
  }
  dimension: referenced_object_domain {
    type: string
    sql: ${TABLE}."REFERENCED_OBJECT_DOMAIN" ;;
  }
  dimension: referenced_object_id {
    type: number
    sql: ${TABLE}."REFERENCED_OBJECT_ID" ;;
  }
  dimension: referenced_object_name {
    type: string
    sql: ${TABLE}."REFERENCED_OBJECT_NAME" ;;
  }
  dimension: referenced_schema {
    type: string
    sql: ${TABLE}."REFERENCED_SCHEMA" ;;
  }
  dimension: referencing_database {
    type: string
    sql: ${TABLE}."REFERENCING_DATABASE" ;;
  }
  dimension: referencing_object_domain {
    type: string
    sql: ${TABLE}."REFERENCING_OBJECT_DOMAIN" ;;
  }
  dimension: referencing_object_id {
    type: number
    sql: ${TABLE}."REFERENCING_OBJECT_ID" ;;
  }
  dimension: referencing_object_name {
    type: string
    sql: ${TABLE}."REFERENCING_OBJECT_NAME" ;;
  }
  dimension: referencing_schema {
    type: string
    sql: ${TABLE}."REFERENCING_SCHEMA" ;;
  }
  measure: count {
    type: count
    drill_fields: [referencing_object_name, referenced_object_name]
  }
}
