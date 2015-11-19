#!/bin/bash
# Configure nrpe allowed connections

NRPE_CUSTOM_CONF='/opt/local/etc/nagios/nrpe_custom.cfg'

if mdata-get nrpe_allowed_hosts 1>/dev/null 2>&1; then
	echo "" >> ${NRPE_CUSTOM_CONF}
	echo "# mdata-get nrpe_allowed_hosts" >> ${NRPE_CUSTOM_CONF}
	echo "allowed_hosts=$(mdata-get nrpe_allowed_hosts)" >> ${NRPE_CUSTOM_CONF}
fi
