view: lock_wait_history {
  sql_table_name: "ACCOUNT_USAGE"."LOCK_WAIT_HISTORY" ;;

  dimension_group: acquired {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."ACQUIRED_AT" ;;
  }
  dimension: blocker_queries {
    type: string
    sql: ${TABLE}."BLOCKER_QUERIES" ;;
  }
  dimension: database_id {
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }
  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }
  dimension: lock_type {
    type: string
    sql: ${TABLE}."LOCK_TYPE" ;;
  }
  dimension: object_id {
    type: number
    sql: ${TABLE}."OBJECT_ID" ;;
  }
  dimension: object_name {
    type: string
    sql: ${TABLE}."OBJECT_NAME" ;;
  }
  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }
  dimension_group: requested {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."REQUESTED_AT" ;;
  }
  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }
  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }
  dimension: transaction_id {
    type: number
    sql: ${TABLE}."TRANSACTION_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [schema_name, object_name, database_name]
  }
}
