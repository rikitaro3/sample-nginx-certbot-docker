#!/bin/bash
sudo docker-compose run --rm certbot certonly --webroot --webroot-path=/var/www/certbot -d example.com