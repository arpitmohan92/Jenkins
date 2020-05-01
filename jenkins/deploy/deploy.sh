#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp /tmp/.auth ec3-user@192.168.43.181:/tmp/.auth
scp ./jenkins/deploy/publish ec3-user@192.168.43.181:/tmp/publish
ssh ec3-user@192.168.43.181 "/tmp/publish"
