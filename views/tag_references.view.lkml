view: tag_references {
  sql_table_name: "ACCOUNT_USAGE"."TAG_REFERENCES" ;;

  dimension: column_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."COLUMN_ID" ;;
  }
  dimension: column_name {
    type: string
    sql: ${TABLE}."COLUMN_NAME" ;;
  }
  dimension: domain {
    type: string
    sql: ${TABLE}."DOMAIN" ;;
  }
  dimension: object_database {
    type: string
    sql: ${TABLE}."OBJECT_DATABASE" ;;
  }
  dimension_group: object_deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."OBJECT_DELETED" ;;
  }
  dimension: object_id {
    type: number
    sql: ${TABLE}."OBJECT_ID" ;;
  }
  dimension: object_name {
    type: string
    sql: ${TABLE}."OBJECT_NAME" ;;
  }
  dimension: object_schema {
    type: string
    sql: ${TABLE}."OBJECT_SCHEMA" ;;
  }
  dimension: tag_database {
    type: string
    sql: ${TABLE}."TAG_DATABASE" ;;
  }
  dimension: tag_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."TAG_ID" ;;
  }
  dimension: tag_name {
    type: string
    sql: ${TABLE}."TAG_NAME" ;;
  }
  dimension: tag_schema {
    type: string
    sql: ${TABLE}."TAG_SCHEMA" ;;
  }
  dimension: tag_value {
    type: string
    sql: ${TABLE}."TAG_VALUE" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	column_name,
	tag_name,
	object_name,
	tags.tag_id,
	tags.tag_name,
	columns.character_set_name,
	columns.table_name,
	columns.column_name,
	columns.column_id,
	columns.collation_name,
	columns.domain_name,
	columns.scope_name,
	columns.udt_name
	]
  }

}
