echo "*********************************************************"
echo "*                  LEMP + Node Server                   *"
echo "*            Author: Caio Melzer de Oliveira            *"
echo "*            Email: melzer.caio@gmail.com               *"
echo "*********************************************************"
echo ""
echo "Step 1: NGINX Installation"
--sudo apt-get update -q
--sudo apt-get install nginx -y
echo "Step 1: NGINX Installation: Done!"
echo ""
echo "Step 2: MYSQL Installation"
--sudo apt-get install mysql-server -y
--sudo mysql_install_db -y
--sudo mysql_secure_installation -y
echo "Step 2: MYSQL Installation: Done!"
echo ""
echo "Step 3: PHP Installation"
--sudo apt-get install php5-fpm php5-mysql -y
--sudo service php5-fpm restart
echo "Step 3: PHP Installation: Done!"
echo ""
echo "Step 4: Configure NGINX"
sudo rm -r /etc/nginx/sites-enabled/default
sudo rm -r /etc/nginx/sites-available/default
echo "server {
    listen 80 default_server;
    listen [::]:80 default_server ipv6only=on;

    root /usr/share/nginx/html/"$1";
    index index.php index.html index.htm;

    server_name "$1" www."$1"; 

    location / {
        try_files $uri $uri/ =404;
    }

    error_page 404 /404.html;
    error_page 500 502 503 504 /50x.html;
    location = /50x.html {
        root /usr/share/nginx/html;
    }

    location ~ \.php$ {
        try_files $uri =404;
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass unix:/var/run/php5-fpm.sock;
        fastcgi_index index.php;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        include fastcgi_params;
    }
}" > /etc/nginx/sites-available/"$1"
sudo ln -s /etc/nginx/sites-available/"$1" /etc/nginx/sites-enabled/"$1"
echo "Step 4: Configure NGINX Done"
echo ""
echo "Step 5: NODEJS Installation"
sudo apt-get install build-essential libssl-dev
curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh
source ~/.profile
nvm install 7.9.0
nvm alias default 7.9.0
nvm use default
echo "Step 5: NODEJS Installation Done"
echo ""
echo "Step 5: EXPRESS Installation Done"
npm install -g express -y
echo "Step 5: EXPRESS Installation Done"
echo ""
echo "Step 6: Restarting services..."
sudo service nginx restart
echo ""
echo "*********************************************************"
echo "*                         DONE!                         *"
echo "*********************************************************"






