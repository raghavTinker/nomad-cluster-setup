datacenter = "${nomad_dc}"
data_dir   = "/opt/nomad/data"

log_level = "INFO"

bind_addr = "0.0.0.0"

advertise {
  http = "{{ GetInterfaceIP \"ens5\" }}"
  rpc  = "{{ GetInterfaceIP \"ens5\" }}"
  serf = "{{ GetInterfaceIP \"ens5\" }}"
}

acl {
  enabled = true
}

consul {
  auto_advertise   = false
  server_auto_join = false
  client_auto_join = false
}

telemetry {
  collection_interval        = "15s"
  disable_hostname           = true
  prometheus_metrics         = true
  publish_allocation_metrics = true
  publish_node_metrics       = true
}

vault {
  enabled = false
}
