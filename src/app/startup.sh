#!/bin/sh
rm -rf /usr/src/app/node_modules
rm -rf /usr/src/app/public/bower_components
mv /app/node_modules /usr/src/app
mv /app/public/bower_components /usr/src/app/public
cd /usr/src/app
npm start
