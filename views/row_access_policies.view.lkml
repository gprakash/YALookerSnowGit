view: row_access_policies {
  sql_table_name: "ACCOUNT_USAGE"."ROW_ACCESS_POLICIES" ;;

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
  dimension: options {
    type: string
    sql: ${TABLE}."OPTIONS" ;;
  }
  dimension: owner_role_type {
    type: string
    sql: ${TABLE}."OWNER_ROLE_TYPE" ;;
  }
  dimension: policy_body {
    type: string
    sql: ${TABLE}."POLICY_BODY" ;;
  }
  dimension: policy_catalog {
    type: string
    sql: ${TABLE}."POLICY_CATALOG" ;;
  }
  dimension: policy_catalog_id {
    type: number
    sql: ${TABLE}."POLICY_CATALOG_ID" ;;
  }
  dimension: policy_comment {
    type: string
    sql: ${TABLE}."POLICY_COMMENT" ;;
  }
  dimension: policy_id {
    type: number
    sql: ${TABLE}."POLICY_ID" ;;
  }
  dimension: policy_name {
    type: string
    sql: ${TABLE}."POLICY_NAME" ;;
  }
  dimension: policy_owner {
    type: string
    sql: ${TABLE}."POLICY_OWNER" ;;
  }
  dimension: policy_return_type {
    type: string
    sql: ${TABLE}."POLICY_RETURN_TYPE" ;;
  }
  dimension: policy_schema {
    type: string
    sql: ${TABLE}."POLICY_SCHEMA" ;;
  }
  dimension: policy_schema_id {
    type: number
    sql: ${TABLE}."POLICY_SCHEMA_ID" ;;
  }
  dimension: policy_signature {
    type: string
    sql: ${TABLE}."POLICY_SIGNATURE" ;;
  }
  measure: count {
    type: count
    drill_fields: [policy_name]
  }
}
