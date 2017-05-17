echo "*********************************************************"
echo "*                  LEMP + Node Server                   *"
echo "*            Author: Caio Melzer de Oliveira            *"
echo "*            Email: melzer.caio@gmail.com               *"
echo "*********************************************************"
echo ""
echo "Step 1: Configuration of Domain caiomelzer.ga"
mkdir /usr/share/nginx/html/caiomelzer.ga
cp caiomelzer.ga /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/caiomelzer.ga /etc/nginx/sites-enabled/caiomelzer.ga

echo "Step 2: Configuration of Domain myweb.tk"
mkdir /usr/share/nginx/html/myweb.tk
cp myweb.tk /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/myweb.tk /etc/nginx/sites-enabled/myweb.tk

echo "Step 3: Configuration of Default Domain"
mkdir /usr/share/nginx/html
cp home /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/home /etc/nginx/sites-enabled/home

echo "Step 4: Configuration of TaxData Domain"
mkdir /usr/share/nginx/html/taxdata.tk
cp taxdata.tk /etc/nginx/sites-available/
ln -s /etc/nginx/sites-available/taxdata.tk /etc/nginx/sites-enabled/taxdata.tk

echo "Step 5: Restarting Server"
sudo service nginx restart
echo ""
echo "*********************************************************"
echo "*                         DONE!                         *"
echo "*********************************************************"
