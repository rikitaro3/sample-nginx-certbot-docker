#!/bin/bash

# nginxの起動
sudo docker-compose up -d --build

# 証明書の発行
sudo docker-compose run --rm certbot certonly --webroot --webroot-path=/var/www/certbot -d example.com --register-unsafely-without-email

# app.confのSSL通信設定コメントアウト除外

# nginxリロード
sudo docker exec nginx_sample nginx -s reload