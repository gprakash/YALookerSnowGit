view: session_policies {
  sql_table_name: "ACCOUNT_USAGE"."SESSION_POLICIES" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ID" ;;
  }
  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED" ;;
  }
  dimension: database {
    type: string
    sql: ${TABLE}."DATABASE" ;;
  }
  dimension: database_id {
    type: number
    sql: ${TABLE}."DATABASE_ID" ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DELETED" ;;
  }
  dimension_group: last_altered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_ALTERED" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }
  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }
  dimension: owner_role_type {
    type: string
    sql: ${TABLE}."OWNER_ROLE_TYPE" ;;
  }
  dimension: schema {
    type: string
    sql: ${TABLE}."SCHEMA" ;;
  }
  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }
  dimension: session_idle_timeout_mins {
    type: number
    value_format_name: id
    sql: ${TABLE}."SESSION_IDLE_TIMEOUT_MINS" ;;
  }
  dimension: session_ui_idle_timeout_mins {
    type: number
    value_format_name: id
    sql: ${TABLE}."SESSION_UI_IDLE_TIMEOUT_MINS" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
