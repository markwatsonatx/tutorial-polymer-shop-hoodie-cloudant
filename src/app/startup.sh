#!/bin/sh
if [ ! -d "/usr/src/app/node_modules" ]; then
   echo "Copying node_modules..."
   cp -r /app/node_modules /usr/src/app/node_modules
fi
if [ ! -d "/usr/src/app/public/bower_components" ]; then
   echo "Copying bower_components..."
   cp -r /app/public/bower_components /usr/src/app/public/bower_components
fi
cd /usr/src/app
npm start
