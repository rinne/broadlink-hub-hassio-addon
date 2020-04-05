#! /bin/bash

echo ''
echo 'Date: '"$(date -u +'%Y-%m-%d %H:%M:%S UTC')"


echo ''
echo 'Network interfaces:'
ip addr

echo ''
echo 'Addon configuration:'
echo "$(cat /data/options.json)"

echo ''
echo "Starting the service"

( cd /node-service && node ./blhub.js --version )
echo ''
( cd /node-service && node ./blhub.js --listen-address=0.0.0.0 --listen-port=8525 --hassio-addon-config=/data/options.json )

echo ''
echo "Service bails out"

echo ''
echo 'Date: '"$(date -u +'%Y-%m-%d %H:%M:%S UTC')"

exit $?
