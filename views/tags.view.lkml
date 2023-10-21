view: tags {
  sql_table_name: "ACCOUNT_USAGE"."TAGS" ;;
  drill_fields: [tag_id]

  dimension: tag_id {
    primary_key: yes
    type: number
    sql: ${TABLE}."TAG_ID" ;;
  }
  dimension: allowed_values {
    type: string
    sql: ${TABLE}."ALLOWED_VALUES" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED" ;;
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
  dimension: owner_role_type {
    type: string
    sql: ${TABLE}."OWNER_ROLE_TYPE" ;;
  }
  dimension: tag_comment {
    type: string
    sql: ${TABLE}."TAG_COMMENT" ;;
  }
  dimension: tag_database {
    type: string
    sql: ${TABLE}."TAG_DATABASE" ;;
  }
  dimension: tag_database_id {
    type: number
    sql: ${TABLE}."TAG_DATABASE_ID" ;;
  }
  dimension: tag_name {
    type: string
    sql: ${TABLE}."TAG_NAME" ;;
  }
  dimension: tag_owner {
    type: string
    sql: ${TABLE}."TAG_OWNER" ;;
  }
  dimension: tag_schema {
    type: string
    sql: ${TABLE}."TAG_SCHEMA" ;;
  }
  dimension: tag_schema_id {
    type: number
    sql: ${TABLE}."TAG_SCHEMA_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [tag_id, tag_name, tag_references.count]
  }
}
