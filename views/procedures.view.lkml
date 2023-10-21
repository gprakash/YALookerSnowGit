view: procedures {
  sql_table_name: "ACCOUNT_USAGE"."PROCEDURES" ;;

  dimension: argument_signature {
    type: string
    sql: ${TABLE}."ARGUMENT_SIGNATURE" ;;
  }
  dimension: character_maximum_length {
    type: number
    sql: ${TABLE}."CHARACTER_MAXIMUM_LENGTH" ;;
  }
  dimension: character_octet_length {
    type: number
    sql: ${TABLE}."CHARACTER_OCTET_LENGTH" ;;
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
  dimension: data_type {
    type: string
    sql: ${TABLE}."DATA_TYPE" ;;
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
  dimension: numeric_precision {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION" ;;
  }
  dimension: numeric_precision_radix {
    type: number
    sql: ${TABLE}."NUMERIC_PRECISION_RADIX" ;;
  }
  dimension: numeric_scale {
    type: number
    sql: ${TABLE}."NUMERIC_SCALE" ;;
  }
  dimension: packages {
    type: string
    sql: ${TABLE}."PACKAGES" ;;
  }
  dimension: procedure_catalog {
    type: string
    sql: ${TABLE}."PROCEDURE_CATALOG" ;;
  }
  dimension: procedure_definition {
    type: string
    sql: ${TABLE}."PROCEDURE_DEFINITION" ;;
  }
  dimension: procedure_language {
    type: string
    sql: ${TABLE}."PROCEDURE_LANGUAGE" ;;
  }
  dimension: procedure_name {
    type: string
    sql: ${TABLE}."PROCEDURE_NAME" ;;
  }
  dimension: procedure_owner {
    type: string
    sql: ${TABLE}."PROCEDURE_OWNER" ;;
  }
  dimension: procedure_schema {
    type: string
    sql: ${TABLE}."PROCEDURE_SCHEMA" ;;
  }
  dimension: runtime_version {
    type: string
    sql: ${TABLE}."RUNTIME_VERSION" ;;
  }
  measure: count {
    type: count
    drill_fields: [procedure_name]
  }
}
