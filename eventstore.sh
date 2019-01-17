#!/bin/bash
EVENTSTORE_ARCHIVE=EventStore-OSS-Ubuntu-18.04-v4.1.1-hotfix1
curl https://eventstore.org/downloads/$EVENTSTORE_ARCHIVE.tar.gz --output eventstore.tar.gz
tar -xzf eventstore.tar.gz
cd $EVENTSTORE_ARCHIVE
MY_IP=$(echo "${HOSTNAME:3}" | sed 's/-/./g')
sudo ./run-node.sh --ext-ip=$MY_IP --ext-http-port=80 --ext-http-prefixes="http://*/" --add-interface-prefixes=false
