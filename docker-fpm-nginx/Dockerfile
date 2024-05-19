# Pull the PHP-FPM image from Docker Hub
FROM php:8.1-fpm-alpine

# # Install system dependencies
# Update system packages
RUN apk update

# Install compilers and build tools
RUN apk add --no-cache autoconf
RUN apk add --no-cache g++
# RUN apk add --no-cache build-essential

# Install image processing libraries
RUN apk add --no-cache libpng-dev
RUN apk add --no-cache libjpeg-turbo-dev
RUN apk add --no-cache freetype-dev

# Install other necessary libraries
RUN apk add --no-cache libzip-dev
RUN apk add --no-cache icu-dev
RUN apk add --no-cache oniguruma-dev
RUN apk add --no-cache libxslt-dev

# Install utilities
RUN apk add --no-cache unzip
RUN apk add --no-cache git
RUN apk add --no-cache curl

# Install Nginx
RUN apk add --no-cache nginx

# Install Supervisor
RUN apk add --no-cache supervisor

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mbstring
RUN docker-php-ext-install zip
RUN docker-php-ext-install exif
RUN docker-php-ext-install pcntl
RUN docker-php-ext-install bcmath
RUN docker-php-ext-install intl
RUN docker-php-ext-install soap
RUN docker-php-ext-install dom

# Install GD extension
RUN apk add --no-cache freetype libpng libjpeg-turbo freetype-dev libpng-dev libjpeg-turbo-dev
RUN docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/
RUN docker-php-ext-install gd
RUN apk del freetype-dev libpng-dev libjpeg-turbo-dev

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Clear cache
RUN apk cache clean

# Get the current system time and store it in a variable
ARG BUILD_DATE=$(date +%Y-%m-%d_%H-%M-%S)
# Create a file with the current build date/time as its name
RUN echo $BUILD_DATE > /tmp/build_date.txt

# Copy the Nginx configuration file, using the build date/time file to invalidate the cache
COPY ./nginx.conf /etc/nginx/http.d/default.conf

# Remove the build date/time file
RUN rm /tmp/build_date.txt

# Set working directory
WORKDIR /var/www/html

# Expose port 9000 and start php-fpm server
# EXPOSE 9000

# CMD ["php-fpm"]
# CMD ["nginx", "-g", "daemon off;"]

# Copy supervisord configuration
COPY supervisord.conf /etc/supervisor/conf.d/supervisord.conf

EXPOSE 80

# Start supervisord
# CMD ["/usr/bin/supervisord"]
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
