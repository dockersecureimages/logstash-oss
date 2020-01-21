#!/bin/bash

set -e

if [ -f "$LS_SETTINGS_DIR/log4j2.properties" ]; then
	cp "$LS_SETTINGS_DIR/log4j2.properties" "$LS_SETTINGS_DIR/log4j2.properties.dist"
	truncate -s 0 "$LS_SETTINGS_DIR/log4j2.properties"
fi

# Add logstash as command if needed
if [ "${1:0:1}" = '-' ]; then
	set -- logstash "$@"
fi

# Run as user "logstash" if the command is "logstash"
if [ "$1" = 'logstash' ]; then
	chown -R logstash:logstash /usr/share/logstash/{config,pipeline}
	set -- su-exec logstash "$@"
fi

echo "===== Starting Logstash"
exec "$@"
