#!/bin/bash

CONF_DEV=/home/nicolas/dev/photography-portfolio/photography-portfolio.conf
CONF_PROD=/etc/apache2/sites-available/photography-portfolio.conf

rm $CONF_PROD
cp $CONF_DEV $CONF_PROD

APP_DEV=/home/nicolas/dev/photography-portfolio/FLASKAPP
APP_PROD=/var/www/FLASKAPP

rm -rf $APP_PROD
cp -R $APP_DEV $APP_PROD

LOG_DIR=/var/www/FLASKAPP/logs

mkdir $LOG_DIR

a2ensite photography-portfolio > /dev/null
service apache2 restart