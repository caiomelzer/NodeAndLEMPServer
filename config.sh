echo "*********************************************************"
echo "*                  LEMP + Node Server                   *"
echo "*            Author: Caio Melzer de Oliveira            *"
echo "*            Email: melzer.caio@gmail.com               *"
echo "*********************************************************"
echo ""
echo "Step 1: Configuration of Domain caiomelzer.ga"
mkdir /usr/share/nginx/html/caiomelzer.ga
cp caiomelzer.ga /etc/nginx/sites-avaliable/
ln -s /etc/nginx/sites-avaliable/caiomelzer.ga /etc/nginx/sites-enabled/caiomelzer.ga

echo "Step 2: Configuration of Domain myweb.tk"
mkdir /usr/share/nginx/html/myweb.tk
cp myweb.tk /etc/nginx/sites-avaliable/
ln -s /etc/nginx/sites-avaliable/myweb.tk /etc/nginx/sites-enabled/myweb.tk

echo "Step 3: Restarting Server"
sudo service nginx restart
echo ""
echo "*********************************************************"
echo "*                         DONE!                         *"
echo "*********************************************************"
