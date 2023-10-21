view: serverless_task_history {
  sql_table_name: "ACCOUNT_USAGE"."SERVERLESS_TASK_HISTORY" ;;

  dimension: credits_used {
    type: number
    sql: ${TABLE}."CREDITS_USED" ;;
  }
  dimension: database_id {
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }
  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."END_TIME" ;;
  }
  dimension: instance_id {
    type: number
    sql: ${TABLE}."INSTANCE_ID" ;;
  }
  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }
  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."START_TIME" ;;
  }
  dimension: task_id {
    type: number
    sql: ${TABLE}."TASK_ID" ;;
  }
  dimension: task_name {
    type: string
    sql: ${TABLE}."TASK_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [task_name, schema_name, database_name]
  }
}
