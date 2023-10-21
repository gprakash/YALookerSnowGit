view: alert_history {
  sql_table_name: "ACCOUNT_USAGE"."ALERT_HISTORY" ;;

  dimension: action {
    type: string
    sql: ${TABLE}."ACTION" ;;
  }
  dimension: action_query_id {
    type: string
    sql: ${TABLE}."ACTION_QUERY_ID" ;;
  }
  dimension_group: completed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."COMPLETED_TIME" ;;
  }
  dimension: condition {
    type: string
    sql: ${TABLE}."CONDITION" ;;
  }
  dimension: condition_query_id {
    type: string
    sql: ${TABLE}."CONDITION_QUERY_ID" ;;
  }
  dimension: database_name {
    type: string
    sql: ${TABLE}."DATABASE_NAME" ;;
  }
  dimension: error_code {
    type: number
    sql: ${TABLE}."ERROR_CODE" ;;
  }
  dimension: error_message {
    type: string
    sql: ${TABLE}."ERROR_MESSAGE" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
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
  measure: count {
    type: count
    drill_fields: [schema_name, database_name, name]
  }
}
