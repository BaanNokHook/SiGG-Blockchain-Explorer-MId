#
#    SPDX-License-Identifier: Apache-2.0
#

#!/bin/bash
#
#Redirecting console.log to log file.
#Please visit ./logs/app to view the application logs and visit the ./logs/db to view the Database logs and visit the ./log/console for the console.log
# Log rotating for every 7 days.

docker-compose -f docker-explorer/compose/docker-compose.yml up -d

sleep 5

rm -rf /tmp/fabric-client-kvs_peerOrg*

echo "************************************************************************************"
echo "**************************** Hyperledger Explorer **********************************"
echo "************************************************************************************"

# export LOG_LEVEL_APP=debug
# export LOG_LEVEL_DB=debug
# export LOG_LEVEL_CONSOLE=info
# export LOG_CONSOLE_STDOUT=false

export LOG_LEVEL_APP=info
export LOG_LEVEL_DB=info
export LOG_LEVEL_CONSOLE=info
export LOG_CONSOLE_STDOUT=false

export DISCOVERY_AS_LOCALHOST=true
node main.js name - hyperledger-explorer &

echo "************************************************************************************"
