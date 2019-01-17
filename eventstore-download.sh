#!/bin/bash
EVENTSTORE_ARCHIVE=EventStore-OSS-Ubuntu-18.04-v4.1.1-hotfix1
curl https://eventstore.org/downloads/$EVENTSTORE_ARCHIVE.tar.gz --output eventstore.tar.gz
tar -xzf eventstore.tar.gz
