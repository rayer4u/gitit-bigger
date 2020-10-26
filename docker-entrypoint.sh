#!/bin/bash

GITIT_CONFIG_FILE=/data/my-gitit.conf

if [ ! -f "$GITIT_CONFIG_FILE" ]; then
    cp /gitit-bigger/sample.gitit.conf $GITIT_CONFIG_FILE
fi

cd /data
gitit -f $GITIT_CONFIG_FILE
