view: query_acceleration_eligible {
  sql_table_name: "ACCOUNT_USAGE"."QUERY_ACCELERATION_ELIGIBLE" ;;

  dimension: eligible_query_acceleration_time {
    type: number
    sql: ${TABLE}."ELIGIBLE_QUERY_ACCELERATION_TIME" ;;
  }
  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."END_TIME" ;;
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
  dimension: query_text {
    type: string
    sql: ${TABLE}."QUERY_TEXT" ;;
  }
  dimension_group: start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."START_TIME" ;;
  }
  dimension: upper_limit_scale_factor {
    type: number
    sql: ${TABLE}."UPPER_LIMIT_SCALE_FACTOR" ;;
  }
  dimension: warehouse_name {
    type: string
    sql: ${TABLE}."WAREHOUSE_NAME" ;;
  }
  dimension: warehouse_size {
    type: string
    sql: ${TABLE}."WAREHOUSE_SIZE" ;;
  }
  measure: count {
    type: count
    drill_fields: [warehouse_name]
  }
}
