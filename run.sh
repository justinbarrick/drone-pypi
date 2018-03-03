#!/bin/sh

flynn cluster add -p $FLYNN_TLSPIN default $FLYNN_DOMAIN $FLYNN_KEY
flynn remote add $FLYNN_APP

git push -f $FLYNN_APP master
