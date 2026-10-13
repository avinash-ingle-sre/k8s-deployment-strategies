#!/bin/bash
SERVICE_IP=$1
REQUEST_COUNT=${2:-20}

if [ -z "$SERVICE_IP" ]; then
    echo "वापर: ./traffic_check.sh <EXTERNAL-IP> [REQUEST_COUNT]"
    exit 1
fi

echo "Sending $REQUEST_COUNT requests to http://$SERVICE_IP/ ..."
for i in $(seq 1 $REQUEST_COUNT); do
    curl -s -I "http://$SERVICE_IP" | grep -i "server" || echo "Request $i failed"
    sleep 0.2
done
