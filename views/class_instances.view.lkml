view: class_instances {
  sql_table_name: "ACCOUNT_USAGE"."CLASS_INSTANCES" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: class_database_id {
    type: number
    sql: ${TABLE}."CLASS_DATABASE_ID" ;;
  }
  dimension: class_database_name {
    type: string
    sql: ${TABLE}."CLASS_DATABASE_NAME" ;;
  }
  dimension: class_id {
    type: number
    sql: ${TABLE}."CLASS_ID" ;;
  }
  dimension: class_name {
    type: string
    sql: ${TABLE}."CLASS_NAME" ;;
  }
  dimension: class_schema_id {
    type: number
    sql: ${TABLE}."CLASS_SCHEMA_ID" ;;
  }
  dimension: class_schema_name {
    type: string
    sql: ${TABLE}."CLASS_SCHEMA_NAME" ;;
  }
  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED" ;;
  }
  dimension: database_id {
    type: string
    sql: ${TABLE}."DATABASE_ID" ;;
  }
  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DELETED" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }
  dimension: owner_name {
    type: string
    sql: ${TABLE}."OWNER_NAME" ;;
  }
  dimension: owner_role_type {
    type: string
    sql: ${TABLE}."OWNER_ROLE_TYPE" ;;
  }
  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }
  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	class_database_name,
	name,
	owner_name,
	class_schema_name,
	database_name,
	schema_name,
	class_name
	]
  }

}
