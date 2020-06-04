class druid::params() {
  $version                                            = '0.9.2'
  $package_name                                       = 'io.druid'
  $install_dir                                        = '/opt'
  $install_java                                       = true
  $config_dir                                         = '/etc/druid'
  $extra_classpaths                                   = '/etc/druid'
  $syslog_facility                                    = 'daemon'
  $extensions_remote_repositories                     = ['http://repo1.maven.org/maven2/', 'https://metamx.artifactoryonline.com/metamx/pub-libs-releases-local']
  $extensions_local_repository                        = '~/.m2/repository'
  $extensions_coordinates                             = []
  $extensions_hadoop_deps_dir                         = '/opt/druid/hadoop-dependencies'
  $extensions_loadlist                                = []
  $extensions_default_version                         = undef
  $extensions_search_current_classloader              = true
  $log_properties                                     = true
  $zk_service_host                                    = 'localhost'
  $zk_service_session_timeout_ms                      = 30000
  $curator_compress                                   = true
  $zk_paths_base                                      = '/druid'
  $zk_paths_properties_path                           = undef
  $zk_paths_announcements_path                        = undef
  $zk_paths_live_segments_path                        = undef
  $zk_paths_load_queue_path                           = undef
  $zk_paths_coordinator_path                          = undef
  $zk_paths_indexer_base                              = undef
  $zk_paths_indexer_announcements_path                = undef
  $zk_paths_indexer_tasks_path                        = undef
  $zk_paths_indexer_status_path                       = undef
  $zk_paths_indexer_leader_latch_path                 = undef
  $discovery_curator_path                             = '/druid/discovery'
  $request_logging_type                               = 'noop'
  $request_logging_dir                                = ''
  $request_logging_feed                               = 'druid'
  $monitoring_emission_period                         = 'PT1m'
  $monitoring_monitors                                = []
  $emitter                                            = 'logging'
  $emitter_logging_logger_class                       = 'LoggingEmitter'
  $emitter_logging_log_level                          = 'info'
  $emitter_http_time_out                              = 'PT5M'
  $emitter_http_flush_millis                          = 60000
  $emitter_http_flush_count                           = 500
  $emitter_http_recipient_base_url                    = ''
  $emitter_graphite_hostname                          = undef
  $emitter_graphite_port                              = undef
  $emitter_graphite_batchSize                         = 100
  $emitter_graphite_eventConverter                    = undef
  $emitter_graphite_flushPeriod                       = 60000
  $metadata_storage_type                              = 'mysql'
  $metadata_storage_connector_uri                     = 'jdbc:mysql://localhost:3306/druid?characterEncoding=UTF-8'
  $metadata_storage_connector_user                    = 'druid'
  $metadata_storage_connector_password                = 'insecure_pass'
  $metadata_storage_connector_create_tables           = true
  $metadata_storage_tables_base                       = 'druid'
  $metadata_storage_tables_segment_table              = 'druid_segments'
  $metadata_storage_tables_rule_table                 = 'druid_rules'
  $metadata_storage_tables_config_table               = 'druid_config'
  $metadata_storage_tables_tasks                      = 'druid_tasks'
  $metadata_storage_tables_task_log                   = 'druid_taskLog'
  $metadata_storage_tables_task_lock                  = 'druid_taskLock'
  $metadata_storage_tables_audit                      = 'druid_audit'
  $storage_type                                       = 'local'
  $storage_directory                                  = '/tmp/druid/localStorage'
  $s3_access_key                                      = ''
  $s3_secret_key                                      = ''
  $s3_bucket                                          = ''
  $s3_base_key                                        = ''
  $storage_disable_acl                                = false
  $s3_archive_bucket                                  = ''
  $s3_archive_base_key                                = ''
  $hdfs_directory                                     = ''
  $cassandra_host                                     = ''
  $cassandra_keyspace                                 = ''
  $cache_type                                         = 'local'
  $cache_size_in_bytes                                = 0
  $cache_initial_size                                 = 500000
  $cache_log_eviction_count                           = 0
  $cache_expiration                                   = 2592000
  $cache_timeout                                      = 500
  $cache_hosts                                        = []
  $cache_max_object_size                              = 52428800
  $cache_memcached_prefix                             = 'druid'
  $cache_expire_after                                 = undef
  $selectors_indexing_service_name                    = 'druid/overlord'
  $selectors_coordinator_service_name                 = 'druid/coordinator'
  $announcer_type                                     = 'batch'
  $announcer_segments_per_node                        = 50
  $announcer_max_bytes_per_node                       = 524288
  $broker_host                                        = $::ipaddress
  $broker_port                                        = 8082
  $broker_service                                     = 'druid/broker'
  $broker_balancer_type                               = 'random'
  $broker_populate_cache                              = false
  $broker_uncacheable                                 = ['groupBy', 'select']
  $broker_use_cache                                   = false
  $broker_http_num_connections                        = 5
  $broker_http_read_timeout                           = 'PT15M'
  $broker_jvm_opts                                    = ['-server', '-Duser.timezone=UTC', '-Dfile.encoding=UTF-8', '-Djava.io.tmpdir=/tmp', '-Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager']
  $broker_processing_buffer_size_bytes                = 1073741824
  $broker_processing_column_cache_size_bytes          = 0
  $broker_processing_format_string                    = 'processing-%s'
  $broker_processing_num_threads                      = undef
  $broker_query_group_by_max_intermediate_rows        = 50000
  $broker_query_group_by_max_results                  = 500000
  $broker_query_group_by_single_threaded              = false
  $broker_query_search_max_search_limit               = 1000
  $broker_retry_policy_num_tries                      = 1
  $broker_select_tier_custom_priorities               = []
  $broker_select_tier                                 = 'highestPriority'
  $broker_server_http_max_idle_time                   = 'PT5m'
  $broker_server_http_num_threads                     = 10
  $broker_num_merge_buffers                           = undef
  $broker_sql_enable                                  = undef
  $coordinator_host                                   = $::ipaddress
  $coordinator_port                                   = 8081
  $coordinator_service                                = 'druid/coordinator'
  $coordinator_conversion_on                          = false
  $coordinator_jvm_opts                               = ['-server', '-Duser.timezone=UTC', '-Dfile.encoding=UTF-8', '-Djava.io.tmpdir=/tmp', '-Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager']
  $coordinator_load_timeout                           = 'PT15M'
  $coordinator_manager_config_poll_duration           = 'PT1m'
  $coordinator_manager_rules_alert_threshold          = 'PT10M'
  $coordinator_manager_rules_default_tier             = '_default'
  $coordinator_manager_rules_poll_duration            = 'PT1M'
  $coordinator_manager_segment_poll_duration          = 'PT1M'
  $coordinator_merge_on                               = false
  $coordinator_period                                 = 'PT60S'
  $coordinator_period_indexing_period                 = 'PT1800S'
  $coordinator_start_delay                            = 'PT300S'
  $router_host                                        = $::ipaddress
  $router_plaintext_port                              = 8091
  $router_service                                     = 'druid/router'
  $router_jvm_opts                                    = ['-server', '-Duser.timezone=UTC', '-Dfile.encoding=UTF-8', '-Djava.io.tmpdir=/tmp', '-Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager']
  $router_default_broker_service_name                 = 'druid/broker'
  $router_coordinator_service_name                    = 'druid/coordinator'
  $router_management_proxy_enabled                    = false
  $router_tier_to_broker_map                          = { '_default_tier' => '' }
  $router_default_rule                                = '_default'
  $router_poll_period                                 = 'PT1M'
  $router_strategies                                  = [ { 'type'=>'timeBoundary' },{ 'type'=>'priority' } ]
  $router_avatica_balancer_type                       = 'rendezvousHash'
  $router_http_num_connections                        = 5
  $router_http_read_timeout                           = 'PT15M'
  $router_http_num_max_threads                        = 10
  $router_server_http_num_threads                     = 10
  $historical_host                                    = $::ipaddress
  $historical_port                                    = 8083
  $historical_service                                 = 'druid/historical'
  $historical_server_max_size                         = 0
  $historical_server_tier                             = '_default_tier'
  $historical_server_priority                         = 0
  $historical_segment_cache_locations                 = undef
  $historical_segment_cache_delete_on_remove          = true
  $historical_segment_cache_drop_segment_delay_millis = 30000
  $historical_segment_cache_info_dir                  = undef
  $historical_segment_cache_announce_interval_millis  = 5000
  $historical_segment_cache_num_loading_threads       = 1
  $historical_server_http_num_threads                 = 10
  $historical_server_http_max_idle_time               = 'PT5m'
  $historical_processing_buffer_size_bytes            = 1073741824
  $historical_processing_format_string                = 'processing-%s'
  $historical_processing_num_threads                  = undef
  $historical_processing_column_cache_size_bytes      = 0
  $historical_query_group_by_single_threaded          = false
  $historical_query_group_by_max_intermediate_rows    = 50000
  $historical_query_group_by_max_results              = 500000
  $historical_query_search_max_search_limit           = 1000
  $historical_use_cache                               = false
  $historical_populate_cache                          = false
  $historical_uncacheable                             = ['groupBy', 'select']
  $historical_jvm_opts                                = ['-server', '-Duser.timezone=UTC', '-Dfile.encoding=UTF-8', '-Djava.io.tmpdir=/tmp', '-Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager']
  $historical_num_merge_buffers                       = undef
  $indexing_azure_logs_container                      = undef
  $indexing_azure_logs_prefix                         = undef
  $indexing_hdfs_logs_directory                       = undef
  $indexing_local_logs_directory                      = '/var/log'
  $indexing_logs_type                                 = 'file'
  $indexing_s3_logs_bucket                            = undef
  $indexing_s3_logs_prefix                            = undef
  $middle_manager_host                                = $::ipaddress
  $middle_manager_port                                = 8080
  $middle_manager_service                             = 'druid/middlemanager'
  $middle_manager_fork_properties                     = {}
  $middle_manager_jvm_opts                            = ['-server', '-Duser.timezone=UTC', '-Dfile.encoding=UTF-8', '-Djava.io.tmpdir=/tmp', '-Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager']
  $middle_manager_peon_mode                           = 'remote'
  $middle_manager_processing_buffer_size_bytes        = 1073741824
  $middle_manager_processing_num_threads              = undef
  $middle_manager_remote_peon_max_retry_count         = 10
  $middle_manager_remote_peon_max_wait                = 'PT10M'
  $middle_manager_remote_peon_min_wait                = 'PT1M'
  $middle_manager_runner_classpath                    = undef
  $middle_manager_runner_compress_znodes              = true
  $middle_manager_runner_java_command                 = 'java'
  $middle_manager_runner_java_opts                    = undef
  $middle_manager_runner_max_znode_bytes              = 524288
  $middle_manager_runner_start_port                   = 8100
  $middle_manager_task_base_dir                       = '/tmp'
  $middle_manager_task_base_task_dir                  = '/tmp/persistent/tasks'
  $middle_manager_task_chat_handler_type              = 'noop'
  $middle_manager_task_default_hadoop_coordinates     = ['org.apache.hadoop:hadoop-client:2.3.0']
  $middle_manager_task_default_row_flush_boundary     = 50000
  $middle_manager_task_hadoop_working_path            = '/tmp/druid-indexing'
  $middle_manager_worker_capacity                     = undef
  $middle_manager_worker_ip                           = 'localhost'
  $middle_manager_worker_version                      = '0'
  $middle_manager_num_merge_buffers                   = undef
  $middle_manager_server_http_num_threads             = 10
  $overlord_host                                      = $::ipaddress
  $overlord_port                                      = 8090
  $overlord_service                                   = 'druid/overlord'
  $overlord_autoscale                                 = false
  $overlord_autoscale_max_scaling_duration            = 'PT15M'
  $overlord_autoscale_num_events_to_track             = 10
  $overlord_autoscale_origin_time                     = '2012-01-01T00:55:00.000Z'
  $overlord_autoscale_pending_task_timeout            = 'PT30S'
  $overlord_autoscale_provision_period                = 'PT1M'
  $overlord_autoscale_strategy                        = 'noop'
  $overlord_autoscale_terminate_period                = 'PT5M'
  $overlord_autoscale_worker_idle_timeout             = 'PT90M'
  $overlord_autoscale_worker_port                     = 8080
  $overlord_autoscale_worker_version                  = undef
  $overlord_jvm_opts                                  = ['-server', '-Duser.timezone=UTC', '-Dfile.encoding=UTF-8', '-Djava.io.tmpdir=/tmp', '-Djava.util.logging.manager=org.apache.logging.log4j.jul.LogManager']
  $overlord_queue_max_size                            = undef
  $overlord_queue_restart_delay                       = 'PT30S'
  $overlord_queue_start_delay                         = 'PT1M'
  $overlord_queue_storage_sync_rate                   = 'PT1M'
  $overlord_runner_compress_znodes                    = true
  $overlord_runner_max_znode_bytes                    = 524288
  $overlord_runner_min_worker_version                 = '0'
  $overlord_runner_task_assignment_timeout            = 'PT5M'
  $overlord_runner_task_cleanup_timeout               = 'PT15M'
  $overlord_runner_type                               = 'local'
  $overlord_storage_recently_finished_threshold       = 'PT24H'
  $overlord_storage_type                              = 'local'
}
