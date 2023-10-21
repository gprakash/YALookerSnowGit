view: task_history {
  sql_table_name: "ACCOUNT_USAGE"."TASK_HISTORY" ;;

  dimension: attempt_number {
    type: number
    sql: ${TABLE}."ATTEMPT_NUMBER" ;;
  }
  dimension_group: completed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."COMPLETED_TIME" ;;
  }
  dimension: condition_text {
    type: string
    sql: ${TABLE}."CONDITION_TEXT" ;;
  }
  dimension: config {
    type: string
    sql: ${TABLE}."CONFIG" ;;
  }
  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }
  dimension: error_code {
    type: string
    sql: ${TABLE}."ERROR_CODE" ;;
  }
  dimension: error_message {
    type: string
    sql: ${TABLE}."ERROR_MESSAGE" ;;
  }
  dimension: graph_run_group_id {
    type: string
    sql: ${TABLE}."GRAPH_RUN_GROUP_ID" ;;
  }
  dimension: graph_version {
    type: number
    sql: ${TABLE}."GRAPH_VERSION" ;;
  }
  dimension: instance_id {
    type: number
    sql: ${TABLE}."INSTANCE_ID" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }
  dimension: query_hash {
    type: string
    sql: ${TABLE}."QUERY_HASH" ;;
  }
  dimension: query_hash_version {
    type: number
    sql: ${TABLE}."QUERY_HASH_VERSION" ;;
  }
  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }
  dimension: query_parameterized_hash {
    type: string
    sql: ${TABLE}."QUERY_PARAMETERIZED_HASH" ;;
  }
  dimension: query_parameterized_hash_version {
    type: number
    sql: ${TABLE}."QUERY_PARAMETERIZED_HASH_VERSION" ;;
  }
  dimension_group: query_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."QUERY_START_TIME" ;;
  }
  dimension: query_text {
    type: string
    sql: ${TABLE}."QUERY_TEXT" ;;
  }
  dimension: return_value {
    type: string
    sql: ${TABLE}."RETURN_VALUE" ;;
  }
  dimension: root_task_id {
    type: string
    sql: ${TABLE}."ROOT_TASK_ID" ;;
  }
  dimension: run_id {
    type: number
    sql: ${TABLE}."RUN_ID" ;;
  }
  dimension: scheduled_from {
    type: string
    sql: ${TABLE}."SCHEDULED_FROM" ;;
  }
  dimension_group: scheduled {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."SCHEDULED_TIME" ;;
  }
  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }
  dimension: task_database_id {
    type: number
    sql: ${TABLE}."TASK_DATABASE_ID" ;;
  }
  dimension: task_schema_id {
    type: number
    sql: ${TABLE}."TASK_SCHEMA_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [name, schema_name, database_name]
  }
}
