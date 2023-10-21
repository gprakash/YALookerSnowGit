view: index_columns {
  sql_table_name: "ACCOUNT_USAGE"."INDEX_COLUMNS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: constraint_name {
    type: string
    sql: ${TABLE}."CONSTRAINT_NAME" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED" ;;
  }
  dimension: database_id {
    type: number
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
  dimension: index_id {
    type: number
    sql: ${TABLE}."INDEX_ID" ;;
  }
  dimension: index_name {
    type: string
    sql: ${TABLE}."INDEX_NAME" ;;
  }
  dimension: index_owner {
    type: string
    sql: ${TABLE}."INDEX_OWNER" ;;
  }
  dimension: is_included_in_column {
    type: string
    sql: ${TABLE}."IS_INCLUDED_IN_COLUMN" ;;
  }
  dimension: is_unique {
    type: string
    sql: ${TABLE}."IS_UNIQUE" ;;
  }
  dimension: key_sequence {
    type: number
    sql: ${TABLE}."KEY_SEQUENCE" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }
  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }
  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }
  dimension: table_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."TABLE_ID" ;;
  }
  dimension: table_name {
    type: string
    sql: ${TABLE}."TABLE_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	id,
	constraint_name,
	schema_name,
	index_name,
	database_name,
	name,
	table_name,
	tables.user_defined_type_name,
	tables.table_name,
	tables.table_id,
	tables.self_referencing_column_name
	]
  }

}
