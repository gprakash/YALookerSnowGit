view: sessions {
  sql_table_name: "ACCOUNT_USAGE"."SESSIONS" ;;
  drill_fields: [session_id]

  dimension: session_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."SESSION_ID" ;;
  }
  dimension: authentication_method {
    type: string
    sql: ${TABLE}."AUTHENTICATION_METHOD" ;;
  }
  dimension: client_application_id {
    type: string
    sql: ${TABLE}."CLIENT_APPLICATION_ID" ;;
  }
  dimension: client_application_version {
    type: string
    sql: ${TABLE}."CLIENT_APPLICATION_VERSION" ;;
  }
  dimension: client_build_id {
    type: string
    sql: ${TABLE}."CLIENT_BUILD_ID" ;;
  }
  dimension: client_environment {
    type: string
    sql: ${TABLE}."CLIENT_ENVIRONMENT" ;;
  }
  dimension: client_version {
    type: string
    sql: ${TABLE}."CLIENT_VERSION" ;;
  }
  dimension: closed_reason {
    type: string
    sql: ${TABLE}."CLOSED_REASON" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_ON" ;;
  }
  dimension: login_event_id {
    type: number
    sql: ${TABLE}."LOGIN_EVENT_ID" ;;
  }
  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [session_id, user_name, query_history.count]
  }
}
