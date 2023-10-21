view: complete_task_graphs {
  sql_table_name: "ACCOUNT_USAGE"."COMPLETE_TASK_GRAPHS" ;;

  dimension: attempt_number {
    type: number
    sql: ${TABLE}."ATTEMPT_NUMBER" ;;
  }
  dimension_group: completed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."COMPLETED_TIME" ;;
  }
  dimension: config {
    type: string
    sql: ${TABLE}."CONFIG" ;;
  }
  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }
  dimension: first_error_code {
    type: string
    sql: ${TABLE}."FIRST_ERROR_CODE" ;;
  }
  dimension: first_error_message {
    type: string
    sql: ${TABLE}."FIRST_ERROR_MESSAGE" ;;
  }
  dimension: first_error_task_name {
    type: string
    sql: ${TABLE}."FIRST_ERROR_TASK_NAME" ;;
  }
  dimension: graph_database_id {
    type: number
    sql: ${TABLE}."GRAPH_DATABASE_ID" ;;
  }
  dimension: graph_run_group_id {
    type: string
    sql: ${TABLE}."GRAPH_RUN_GROUP_ID" ;;
  }
  dimension: graph_schema_id {
    type: number
    sql: ${TABLE}."GRAPH_SCHEMA_ID" ;;
  }
  dimension: graph_version {
    type: number
    sql: ${TABLE}."GRAPH_VERSION" ;;
  }
  dimension_group: next_scheduled {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."NEXT_SCHEDULED_TIME" ;;
  }
  dimension_group: query_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."QUERY_START_TIME" ;;
  }
  dimension: root_task_id {
    type: string
    sql: ${TABLE}."ROOT_TASK_ID" ;;
  }
  dimension: root_task_name {
    type: string
    sql: ${TABLE}."ROOT_TASK_NAME" ;;
  }
  dimension: run_id {
    type: number
    sql: ${TABLE}."RUN_ID" ;;
  }
  dimension: scheduled_from {
    type: string
    sql: ${TABLE}."SCHEDULED_FROM" ;;
  }
  dimension_group: scheduled_time {
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
  measure: count {
    type: count
    drill_fields: [root_task_name, database_name, first_error_task_name, schema_name]
  }
}
