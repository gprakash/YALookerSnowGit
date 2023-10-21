view: snowpipe_streaming_client_history {
  sql_table_name: "ACCOUNT_USAGE"."SNOWPIPE_STREAMING_CLIENT_HISTORY" ;;

  dimension: blob_size_bytes {
    type: number
    sql: ${TABLE}."BLOB_SIZE_BYTES" ;;
  }
  dimension: client_name {
    type: string
    sql: ${TABLE}."CLIENT_NAME" ;;
  }
  dimension_group: event_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."EVENT_TIMESTAMP" ;;
  }
  dimension: event_type {
    type: string
    sql: ${TABLE}."EVENT_TYPE" ;;
  }
  dimension: snowflake_provided_id {
    type: string
    sql: ${TABLE}."SNOWFLAKE_PROVIDED_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [client_name]
  }
}
