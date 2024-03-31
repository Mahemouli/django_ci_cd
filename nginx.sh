#!/bin/bash

sudo cp -rf scripts/app.conf /etc/nginx/sites-available/dev/app
chmod 710  /var/lib/jenkins/workspace/Pipeline-tools

sudo ln -s /etc/nginx/sites-available/dev/app /etc/nginx/sites-enabled/dev
sudo nginx -t

sudo systemctl start nginx
sudo systemctl enable nginx

echo "Nginx has been started"
