FROM php:7.4-apache

EXPOSE 80

RUN apt update && apt install -y libonig-dev && docker-php-ext-install pdo pdo_mysql  \
  && a2enmod rewrite expires headers

CMD ["apache2-foreground"]
