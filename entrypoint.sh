#!/bin/bash

# Start the SSM agent in the background
/usr/bin/amazon-ssm-agent &

# Start your app (this will become PID 1)
exec yarn start
