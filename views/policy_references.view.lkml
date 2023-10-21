view: policy_references {
  sql_table_name: "ACCOUNT_USAGE"."POLICY_REFERENCES" ;;

  dimension: policy_db {
    type: string
    sql: ${TABLE}."POLICY_DB" ;;
  }
  dimension: policy_id {
    type: number
    sql: ${TABLE}."POLICY_ID" ;;
  }
  dimension: policy_kind {
    type: string
    sql: ${TABLE}."POLICY_KIND" ;;
  }
  dimension: policy_name {
    type: string
    sql: ${TABLE}."POLICY_NAME" ;;
  }
  dimension: policy_schema {
    type: string
    sql: ${TABLE}."POLICY_SCHEMA" ;;
  }
  dimension: policy_status {
    type: string
    sql: ${TABLE}."POLICY_STATUS" ;;
  }
  dimension: ref_arg_column_names {
    type: string
    sql: ${TABLE}."REF_ARG_COLUMN_NAMES" ;;
  }
  dimension: ref_column_name {
    type: string
    sql: ${TABLE}."REF_COLUMN_NAME" ;;
  }
  dimension: ref_database_name {
    type: string
    sql: ${TABLE}."REF_DATABASE_NAME" ;;
  }
  dimension: ref_entity_domain {
    type: string
    sql: ${TABLE}."REF_ENTITY_DOMAIN" ;;
  }
  dimension: ref_entity_name {
    type: string
    sql: ${TABLE}."REF_ENTITY_NAME" ;;
  }
  dimension: ref_schema_name {
    type: string
    sql: ${TABLE}."REF_SCHEMA_NAME" ;;
  }
  dimension: tag_database {
    type: string
    sql: ${TABLE}."TAG_DATABASE" ;;
  }
  dimension: tag_name {
    type: string
    sql: ${TABLE}."TAG_NAME" ;;
  }
  dimension: tag_schema {
    type: string
    sql: ${TABLE}."TAG_SCHEMA" ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
	tag_name,
	ref_entity_name,
	ref_column_name,
	policy_name,
	ref_schema_name,
	ref_database_name
	]
  }

}
