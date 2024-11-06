#!/usr/bin/bash
APP_HOST=<ADDRESS:IP>
APP_PATH=/root/app/<DIR>
scp -r ./public/* root@$APP_HOST:$APP_PATH/public
