#!/bin/env sh
windscribe status | tail -n 1 | cut -f 1 -d " "

