view: replication_group_usage_history {
  sql_table_name: "ACCOUNT_USAGE"."REPLICATION_GROUP_USAGE_HISTORY" ;;

  dimension: bytes_transferred {
    type: number
    sql: ${TABLE}."BYTES_TRANSFERRED" ;;
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
  dimension: replication_group_id {
    type: number
    sql: ${TABLE}."REPLICATION_GROUP_ID" ;;
  }
  dimension: replication_group_name {
    type: string
    sql: ${TABLE}."REPLICATION_GROUP_NAME" ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."START_TIME" ;;
  }
  measure: count {
    type: count
    drill_fields: [replication_group_name]
  }
}
