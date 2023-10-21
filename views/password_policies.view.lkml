view: password_policies {
  sql_table_name: "ACCOUNT_USAGE"."PASSWORD_POLICIES" ;;
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
  dimension: password_lockout_time_mins {
    type: number
    sql: ${TABLE}."PASSWORD_LOCKOUT_TIME_MINS" ;;
  }
  dimension: password_max_age_days {
    type: number
    sql: ${TABLE}."PASSWORD_MAX_AGE_DAYS" ;;
  }
  dimension: password_max_length {
    type: number
    sql: ${TABLE}."PASSWORD_MAX_LENGTH" ;;
  }
  dimension: password_max_retries {
    type: number
    sql: ${TABLE}."PASSWORD_MAX_RETRIES" ;;
  }
  dimension: password_min_length {
    type: number
    sql: ${TABLE}."PASSWORD_MIN_LENGTH" ;;
  }
  dimension: password_min_lower_case_chars {
    type: number
    sql: ${TABLE}."PASSWORD_MIN_LOWER_CASE_CHARS" ;;
  }
  dimension: password_min_numeric_chars {
    type: number
    sql: ${TABLE}."PASSWORD_MIN_NUMERIC_CHARS" ;;
  }
  dimension: password_min_special_chars {
    type: number
    sql: ${TABLE}."PASSWORD_MIN_SPECIAL_CHARS" ;;
  }
  dimension: password_min_upper_case_chars {
    type: number
    sql: ${TABLE}."PASSWORD_MIN_UPPER_CASE_CHARS" ;;
  }
  dimension: schema {
    type: string
    sql: ${TABLE}."SCHEMA" ;;
  }
  dimension: schema_id {
    type: number
    sql: ${TABLE}."SCHEMA_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
