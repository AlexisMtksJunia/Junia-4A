# Utilisez l'image de base PHP avec Nginx
FROM php:8.1-fpm

# Installez Nginx
RUN apt-get update && apt-get install -y nginx

# Copier le fichier de configuration Nginx
COPY nginx.conf /etc/nginx/nginx.conf

# Copier les fichiers de l'application dans le répertoire web
COPY . /var/www/html

# Changer les permissions pour permettre à Nginx d'accéder aux fichiers
RUN chown -R www-data:www-data /var/www/html

# Exposer le port 80 pour le serveur web
EXPOSE 80

# Script de démarrage pour lancer PHP-FPM et Nginx
CMD service nginx start && php-fpm