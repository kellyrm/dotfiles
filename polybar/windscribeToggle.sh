#! /bin/env sh

if ./windscribeStatus.sh | grep DIS ; then
	windscribe connect
else
	windscribe disconnect 
fi
