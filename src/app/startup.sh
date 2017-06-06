#!/bin/sh
cd /usr/src/app
npm install -g bower
npm install
cd public
bower install --allow-root
cd ..
npm start
