#!/bin/bash

curl -XPUT -H "Content-Type: application/json" 'http://elk-docker_elk_1:9200/_template/filebeat?pretty' -d@/etc/filebeat/filebeat.template.json
/etc/init.d/filebeat start
nginx
tail -f /var/log/nginx/access.log -f /var/log/nginx/error.log
