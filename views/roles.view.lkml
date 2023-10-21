view: roles {
  sql_table_name: "ACCOUNT_USAGE"."ROLES" ;;
  drill_fields: [role_id]

  dimension: role_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."ROLE_ID" ;;
  }
  dimension: comment {
    type: string
    sql: ${TABLE}."COMMENT" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_ON" ;;
  }
  dimension_group: deleted {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."DELETED_ON" ;;
  }
  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }
  dimension: owner {
    type: string
    sql: ${TABLE}."OWNER" ;;
  }
  dimension: role_database_name {
    type: string
    sql: ${TABLE}."ROLE_DATABASE_NAME" ;;
  }
  dimension: role_instance_id {
    type: number
    sql: ${TABLE}."ROLE_INSTANCE_ID" ;;
  }
  dimension: role_type {
    type: string
    sql: ${TABLE}."ROLE_TYPE" ;;
  }
  measure: count {
    type: count
    drill_fields: [role_id, name, role_database_name]
  }
}
