version: 0.23.1

repositories:
  - name: bitnami
    url: https://charts.bitnami.com/bitnami

.options: &options
  namespace: my-namespace
  create_namespace: true
  wait: true
  wait_for_jobs: true
  timeout: 15m
  atomic: false
  maxhistory: 10


releases:
  - name: nginx
    <<: *options
    chart: bitnami/nginx
