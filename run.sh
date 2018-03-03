#!/bin/sh

flynn cluster add --no-git -p $FLYNN_TLSPIN default $FLYNN_DOMAIN $FLYNN_KEY
flynn remote add $FLYNN_APP

git push flynn $DRONE_BRANCH
