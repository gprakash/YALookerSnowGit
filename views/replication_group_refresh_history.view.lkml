view: replication_group_refresh_history {
  sql_table_name: "ACCOUNT_USAGE"."REPLICATION_GROUP_REFRESH_HISTORY" ;;

  dimension_group: end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."END_TIME" ;;
  }
  dimension: error {
    type: string
    sql: ${TABLE}."ERROR" ;;
  }
  dimension: job_uuid {
    type: string
    sql: ${TABLE}."JOB_UUID" ;;
  }
  dimension: object_count {
    type: string
    sql: ${TABLE}."OBJECT_COUNT" ;;
  }
  dimension: phase_name {
    type: string
    sql: ${TABLE}."PHASE_NAME" ;;
  }
  dimension_group: primary_snapshot_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."PRIMARY_SNAPSHOT_TIMESTAMP" ;;
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
  dimension: total_bytes {
    type: string
    sql: ${TABLE}."TOTAL_BYTES" ;;
  }
  measure: count {
    type: count
    drill_fields: [phase_name, replication_group_name]
  }
}
