FROM php:apache

# Copy backend files
COPY ./backend /var/www/html

# Install necessary dependencies (if any)
RUN docker-php-ext-install mysqli

# Serve frontend as static files
COPY ./frontend /var/www/html/frontend