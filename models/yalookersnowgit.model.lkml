connection: "snowflake_connection"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: yalookersnowgit_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: yalookersnowgit_default_datagroup

explore: access_history {}

explore: alert_history {}

explore: automatic_clustering_history {
  join: tables {
    type: left_outer 
    sql_on: ${automatic_clustering_history.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: classes {}

explore: class_instances {}

explore: columns {
  join: tables {
    type: left_outer 
    sql_on: ${columns.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: complete_task_graphs {}

explore: copy_history {
  join: tables {
    type: left_outer 
    sql_on: ${copy_history.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: databases {}

explore: database_replication_usage_history {}

explore: database_storage_usage_history {}

explore: data_transfer_history {}

explore: event_usage_history {}

explore: file_formats {}

explore: functions {}

explore: grants_to_roles {}

explore: grants_to_users {}

explore: hybrid_tables {}

explore: indexes {
  join: tables {
    type: left_outer 
    sql_on: ${indexes.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: index_columns {
  join: tables {
    type: left_outer 
    sql_on: ${index_columns.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: load_history {
  join: tables {
    type: left_outer 
    sql_on: ${load_history.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: lock_wait_history {}

explore: login_history {}

explore: masking_policies {}

explore: materialized_view_refresh_history {
  join: tables {
    type: left_outer 
    sql_on: ${materialized_view_refresh_history.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: metering_daily_history {}

explore: metering_history {}

explore: object_dependencies {}

explore: password_policies {}

explore: pipes {}

explore: pipe_usage_history {
  join: pipes {
    type: left_outer 
    sql_on: ${pipe_usage_history.pipe_id} = ${pipes.pipe_id} ;;
    relationship: many_to_one
  }
}

explore: policy_references {}

explore: procedures {}

explore: query_acceleration_eligible {}

explore: query_history {
  join: sessions {
    type: left_outer 
    sql_on: ${query_history.session_id} = ${sessions.session_id} ;;
    relationship: many_to_one
  }
}

explore: referential_constraints {}

explore: replication_group_refresh_history {}

explore: replication_group_usage_history {}

explore: replication_usage_history {}

explore: roles {}

explore: row_access_policies {}

explore: schemata {}

explore: search_optimization_history {
  join: tables {
    type: left_outer 
    sql_on: ${search_optimization_history.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: sequences {}

explore: serverless_task_history {}

explore: sessions {}

explore: session_policies {}

explore: snowpipe_streaming_client_history {}

explore: snowpipe_streaming_file_migration_history {
  join: tables {
    type: left_outer 
    sql_on: ${snowpipe_streaming_file_migration_history.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: stages {}

explore: stage_storage_usage_history {}

explore: storage_usage {}

explore: tables {}

explore: table_constraints {
  join: tables {
    type: left_outer 
    sql_on: ${table_constraints.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: table_storage_metrics {}

explore: tags {}

explore: tag_references {
  join: tags {
    type: left_outer 
    sql_on: ${tag_references.tag_id} = ${tags.tag_id} ;;
    relationship: many_to_one
  }

  join: columns {
    type: left_outer 
    sql_on: ${tag_references.column_id} = ${columns.column_id} ;;
    relationship: many_to_one
  }

  join: tables {
    type: left_outer 
    sql_on: ${columns.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: task_history {}

explore: task_versions {}

explore: users {}

explore: views {
  join: tables {
    type: left_outer 
    sql_on: ${views.table_id} = ${tables.table_id} ;;
    relationship: many_to_one
  }
}

explore: warehouse_events_history {}

explore: warehouse_load_history {}

explore: warehouse_metering_history {}

