#!/usr/bin/bash
APP_HOST=<ADDRESS:IP>
APP_PATH=/root/app/<DIR>/public
scp -r ./dist/* root@$APP_HOST:$APP_PATH
