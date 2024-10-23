# Utiliser l'image de base Nginx
FROM nginx:latest

# Installer PHP-FPM
RUN apt-get update && apt-get install -y php-fpm

# Copier le fichier de configuration Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copier les fichiers de votre application dans le répertoire web
COPY . /var/www/html

# Assurez-vous que les permissions sont correctement définies
RUN chown -R www-data:www-data /var/www/html

# Exposer le port 80
EXPOSE 80

# Script de démarrage
CMD service php7.4-fpm start && nginx -g "daemon off;"