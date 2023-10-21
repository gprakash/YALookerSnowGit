view: access_history {
  sql_table_name: "ACCOUNT_USAGE"."ACCESS_HISTORY" ;;

  dimension: base_objects_accessed {
    type: string
    sql: ${TABLE}."BASE_OBJECTS_ACCESSED" ;;
  }
  dimension: direct_objects_accessed {
    type: string
    sql: ${TABLE}."DIRECT_OBJECTS_ACCESSED" ;;
  }
  dimension: object_modified_by_ddl {
    type: string
    sql: ${TABLE}."OBJECT_MODIFIED_BY_DDL" ;;
  }
  dimension: objects_modified {
    type: string
    sql: ${TABLE}."OBJECTS_MODIFIED" ;;
  }
  dimension: policies_referenced {
    type: string
    sql: ${TABLE}."POLICIES_REFERENCED" ;;
  }
  dimension: query_id {
    type: string
    sql: ${TABLE}."QUERY_ID" ;;
  }
  dimension_group: query_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."QUERY_START_TIME" ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [user_name]
  }
}
