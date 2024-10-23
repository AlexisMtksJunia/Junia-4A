# Utiliser une image de base PHP avec Apache
FROM php:8.1-apache

# Copier tous les fichiers de votre application dans le dossier web d'Apache
COPY . /var/www/html/

# Installer les dépendances PHP supplémentaires si nécessaire
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Exposer le port 80 pour accéder au serveur web
EXPOSE 80
