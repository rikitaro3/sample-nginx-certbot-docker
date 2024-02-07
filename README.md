# 概要
* DockerコンテナでLet's EncryptのSSL証明書を作成するサンプルです。

# 利用方法
1. app.confのドメインを修正

1. nginxの起動  
sudo docker-compose up -d --build

1. 証明書作成  
sudo docker-compose run --rm certbot certonly --webroot --webroot-path=/var/www/certbot -d example.com --register-unsafely-without-email  
※ドメインは修正してください。

1. app.confのSSL通信設定コメントアウトを外す

1. nginxリロード  
sudo docker exec nginx_sample nginx -s reload

1. SSL証明書自動更新設定  
docker-compose.ymlのentrypointのコメントアウト除外  

1. certbot更新  
sudo docker-compose up -d --build
