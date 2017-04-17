echo "*********************************************************"
echo "*                  LEMP + Node Server                   *"
echo "*            Author: Caio Melzer de Oliveira            *"
echo "*            Email: melzer.caio@gmail.com               *"
echo "*********************************************************"
echo ""
echo "Step 1: NGINX Installation"
sudo apt-get update -q
sudo apt-get install nginx -y
echo "Step 1: NGINX Installation: Done!"
echo ""
echo "Step 2: MYSQL Installation"
sudo apt-get install mysql-server -y
sudo mysql_install_db -y
sudo mysql_secure_installation -y
echo "Step 2: MYSQL Installation: Done!"
echo ""
echo "Step 3: PHP Installation"
sudo apt-get install php5-fpm php5-mysql -y
sudo service php5-fpm restart
echo "Step 3: PHP Installation: Done!"
echo ""
echo "Step 4: Configure NGINX"

echo "Step 4: Configure NGINX Done"
echo ""
echo "Step 5: NODEJS Installation"
sudo apt-get install build-essential libssl-dev -y
curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh
source ~/.profile
nvm install 7.9.0
nvm alias default 7.9.0
nvm use default
echo "Step 5: NODEJS Installation Done"
echo ""
echo "Step 6: EXPRESS Installation Done"
npm install -g express -y
echo "Step 6: EXPRESS Installation Done"
echo ""
echo "Step 7: PM2 Installation Done"
npm install -g pm2 -y
echo "Step 7: PM2 Installation Done"
echo ""
echo "Step 8: Restarting services..."
sudo service nginx restart
echo ""
echo "*********************************************************"
echo "*                         DONE!                         *"
echo "*********************************************************"






