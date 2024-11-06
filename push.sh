#!/usr/bin/bash
APP_HOST=1.22.333
APP_PATH=/root/app/<FOLDER|PATH>/public
scp -r ./dist/* root@$APP_HOST:$APP_PATH
