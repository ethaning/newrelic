#
# Cookbook Name:: newrelic
# Recipe:: ruby_agent
#
# Copyright (c) 2016, David Joos
#

newrelic_agent_ruby 'Install' do
  license lazy { NewRelic.application_monitoring_license(node) }
  version node['newrelic']['ruby_agent']['version'] if node['newrelic']['ruby_agent']['version']
  template_cookbook node['newrelic']['ruby_agent']['template_cookbook'] if node['newrelic']['ruby_agent']['template_cookbook']
  template_source node['newrelic']['ruby_agent']['template_source'] if node['newrelic']['ruby_agent']['template_source']
  enabled NewRelic.to_boolean(node['newrelic']['application_monitoring']['enabled']) if node['newrelic']['application_monitoring']['enabled']
  app_name node['newrelic']['application_monitoring']['app_name'] if node['newrelic']['application_monitoring']['app_name']
  high_security NewRelic.to_boolean(node['newrelic']['application_monitoring']['high_security']) if node['newrelic']['application_monitoring']['high_security']
  owner node['newrelic']['ruby_agent']['app_user'] if node['newrelic']['ruby_agent']['app_user']
  group node['newrelic']['ruby_agent']['app_group'] if node['newrelic']['ruby_agent']['app_group']
  install_dir node['newrelic']['ruby_agent']['install_dir'] if node['newrelic']['ruby_agent']['install_dir']
  logfile node['newrelic']['application_monitoring']['logfile'] if node['newrelic']['application_monitoring']['logfile']
  logfile_path node['newrelic']['application_monitoring']['logfile_path'] if node['newrelic']['application_monitoring']['logfile_path']
  loglevel node['newrelic']['application_monitoring']['loglevel'] if node['newrelic']['application_monitoring']['loglevel']
  audit_mode node['newrelic']['ruby_agent']['audit_mode'] if node['newrelic']['ruby_agent']['audit_mode']
  log_file_count node['newrelic']['ruby_agent']['log_file_count'] if node['newrelic']['ruby_agent']['log_file_count']
  log_limit_in_kbytes node['newrelic']['ruby_agent']['log_limit_in_kbytes'] if node['newrelic']['ruby_agent']['log_limit_in_kbytes']
  log_daily node['newrelic']['ruby_agent']['log_daily'] if node['newrelic']['ruby_agent']['log_daily']
  daemon_ssl NewRelic.to_boolean(node['newrelic']['application_monitoring']['daemon']['ssl']) if node['newrelic']['application_monitoring']['daemon']['ssl']
  daemon_proxy node['newrelic']['application_monitoring']['daemon']['proxy'] if node['newrelic']['application_monitoring']['daemon']['proxy']
  distributed_tracing_enable node['newrelic']['ruby_agent']['distributed_tracing_enable'] if node['newrelic']['ruby_agent']['distributed_tracing_enable'].nil?
  capture_params node['newrelic']['application_monitoring']['capture_params'] if node['newrelic']['application_monitoring']['capture_params']
  ignored_params node['newrelic']['application_monitoring']['ignored_params'] if node['newrelic']['application_monitoring']['ignored_params']
  transaction_tracer_enable node['newrelic']['application_monitoring']['transaction_tracer']['enable'] if node['newrelic']['application_monitoring']['transaction_tracer']['enable']
  transaction_tracer_threshold node['newrelic']['application_monitoring']['transaction_tracer']['threshold'] if node['newrelic']['application_monitoring']['transaction_tracer']['threshold']
  transaction_tracer_record_sql node['newrelic']['application_monitoring']['transaction_tracer']['record_sql'] if node['newrelic']['application_monitoring']['transaction_tracer']['record_sql']
  transaction_tracer_stack_trace_threshold node['newrelic']['application_monitoring']['transaction_tracer']['stack_trace_threshold'] if node['newrelic']['application_monitoring']['transaction_tracer']['stack_trace_threshold']
  transaction_tracer_slow_sql node['newrelic']['application_monitoring']['transaction_tracer']['slow_sql'] if node['newrelic']['application_monitoring']['transaction_tracer']['stack_trace_threshold']
  transaction_tracer_explain_threshold node['newrelic']['application_monitoring']['transaction_tracer']['explain_threshold'] if node['newrelic']['application_monitoring']['transaction_tracer']['explain_threshold']
  error_collector_enable NewRelic.to_boolean(node['newrelic']['application_monitoring']['error_collector']['enable']) if node['newrelic']['application_monitoring']['error_collector']['enable']
  error_collector_ignore_errors node['newrelic']['application_monitoring']['error_collector']['ignore_errors'] if node['newrelic']['application_monitoring']['error_collector']['ignore_errors']
  error_collector_ignore_status_codes node['newrelic']['application_monitoring']['error_collector']['ignore_status_codes'] if node['newrelic']['application_monitoring']['error_collector']['ignore_status_codes']
  browser_monitoring_auto_instrument node['newrelic']['application_monitoring']['browser_monitoring']['auto_instrument'] if node['newrelic']['application_monitoring']['browser_monitoring']['auto_instrument']
  cross_application_tracer_enable NewRelic.to_boolean(node['newrelic']['application_monitoring']['cross_application_tracer']['enable']) if node['newrelic']['application_monitoring']['cross_application_tracer']['enable']
  thread_profiler_enable NewRelic.to_boolean(node['newrelic']['application_monitoring']['thread_profiler']['enable']) if node['newrelic']['application_monitoring']['thread_profiler']['enable']
  labels node['newrelic']['application_monitoring']['labels'] if node['newrelic']['application_monitoring']['labels'].nil?
end
