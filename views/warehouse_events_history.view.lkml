view: warehouse_events_history {
  sql_table_name: "ACCOUNT_USAGE"."WAREHOUSE_EVENTS_HISTORY" ;;

  dimension: cluster_number {
    type: number
    sql: ${TABLE}."CLUSTER_NUMBER" ;;
  }
  dimension: event_name {
    type: string
    sql: ${TABLE}."EVENT_NAME" ;;
  }
  dimension: event_reason {
    type: string
    sql: ${TABLE}."EVENT_REASON" ;;
  }
  dimension: event_state {
    type: string
    sql: ${TABLE}."EVENT_STATE" ;;
  }
  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }
  dimension: role_name {
    type: string
    sql: ${TABLE}."ROLE_NAME" ;;
  }
  dimension_group: timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."TIMESTAMP" ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }
  dimension: warehouse_id {
    type: number
    sql: ${TABLE}."WAREHOUSE_ID" ;;
  }
  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WAREHOUSE_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [user_name, role_name, event_name, warehouse_name]
  }
}
