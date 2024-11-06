#!/usr/bin/bash
APP_HOST=78.141.241.165
APP_PATH=/root/app/docker-express-static
scp -r ./public/* root@$APP_HOST:$APP_PATH/public
