#!/bin/sh

# Ensure log directory exists with the right permissions
mkdir -p /var/log/amazon/ssm
chown -R root:root /var/log/amazon

# Start SSM agent as root
/usr/bin/amazon-ssm-agent &
echo "Started amazon-ssm-agent"

# Drop to non-root for your app
exec su nodejs -c "yarn start"
