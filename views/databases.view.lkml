view: databases {
  sql_table_name: "ACCOUNT_USAGE"."DATABASES" ;;

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
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }
  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }
  dimension: database_owner {
    type: string
    sql: ${TABLE}."DATABASE_OWNER" ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DELETED" ;;
  }
  dimension: is_transient {
    type: string
    sql: ${TABLE}."IS_TRANSIENT" ;;
  }
  dimension_group: last_altered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_ALTERED" ;;
  }
  dimension: resource_group {
    type: string
    sql: ${TABLE}."RESOURCE_GROUP" ;;
  }
  dimension: retention_time {
    type: number
    sql: ${TABLE}."RETENTION_TIME" ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }
  measure: count {
    type: count
    drill_fields: [database_name]
  }
}
