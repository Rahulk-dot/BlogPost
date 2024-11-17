# Use an official PHP image with Apache
FROM php:8.0-apache

# Set the working directory
WORKDIR /var/www/html

# Copy the current directory contents into the container
COPY ./backend/ /var/www/html/

# Install necessary PHP extensions for PostgreSQL
RUN apt-get update && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Expose the port the app runs on
EXPOSE 80

# Set the command to run Apache in the foreground
CMD ["apache2-foreground"]


RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf