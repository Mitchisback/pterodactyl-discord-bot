#!/bin/bash
sleep 2

cd /

# Replace Startup Variables
MODIFIED_STARTUP=`eval echo $(echo ${STARTUP} | sed -e 's/{{/${/g' -e 's/}}/}/g')`
echo ":/$ ${MODIFIED_STARTUP}"

# Run the Server
${MODIFIED_STARTUP}
