view: event_usage_history {
  sql_table_name: "ACCOUNT_USAGE"."EVENT_USAGE_HISTORY" ;;

  dimension: bytes_ingested {
    type: string
    sql: ${TABLE}."BYTES_INGESTED" ;;
  }
  dimension: credits_used {
    type: number
    sql: ${TABLE}."CREDITS_USED" ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."END_TIME" ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."START_TIME" ;;
  }
  measure: count {
    type: count
  }
}
