view: task_versions {
  sql_table_name: "ACCOUNT_USAGE"."TASK_VERSIONS" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }
  dimension: allow_overlapping_execution {
    type: yesno
    sql: ${TABLE}."ALLOW_OVERLAPPING_EXECUTION" ;;
  }
  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }
  dimension: condition_text {
    type: string
    sql: ${TABLE}."CONDITION_TEXT" ;;
  }
  dimension: database_id {
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }
  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }
  dimension: definition {
    type: string
    sql: ${TABLE}."DEFINITION" ;;
  }
  dimension: error_integration {
    type: string
    sql: ${TABLE}."ERROR_INTEGRATION" ;;
  }
  dimension: graph_version {
    type: number
    sql: ${TABLE}."GRAPH_VERSION" ;;
  }
  dimension_group: graph_version_created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."GRAPH_VERSION_CREATED_ON" ;;
  }
  dimension_group: last_committed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_COMMITTED_ON" ;;
  }
  dimension_group: last_suspended {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_SUSPENDED_ON" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }
  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }
  dimension: predecessors {
    type: string
    sql: ${TABLE}."PREDECESSORS" ;;
  }
  dimension: root_task_id {
    type: string
    sql: ${TABLE}."ROOT_TASK_ID" ;;
  }
  dimension: schedule {
    type: string
    sql: ${TABLE}."SCHEDULE" ;;
  }
  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }
  dimension: schema_name {
    type: string
    sql: ${TABLE}."SCHEMA_NAME" ;;
  }
  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }
  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WAREHOUSE_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, warehouse_name, name, schema_name, database_name]
  }
}
