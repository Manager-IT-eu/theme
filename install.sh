php /var/www/pterodactyl/artisan down
cd /var/www/pterodactyl/resources/scripts
rm -rf main.css
echo "@import url('https://hosting-network.eu/user.css')" >> /var/www/pterodactyl/resources/scripts/main.css
rm -rf index.tsx
wget https://raw.githubusercontent.com/DeveloperNeon/ptero-1.0-theme-install/main/resources/index.tsx
cd ../..
php artisan view:clear
php artisan cache:clear
clear
yarn install
yarn add @emotion/react
rm -rf /var/www/pterodactyl/resources/scripts/hoc/requireServerPermission.tsx
yarn build:production
cd ../../..
php /var/www/pterodactyl/artisan up
php /var/www/pterodactyl/artisan view:clear
php /var/www/pterodactyl/artisan cache:clear
clear
echo "Fertig"
