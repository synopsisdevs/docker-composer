FROM synopsis/php:cli

MAINTAINER developers@synopsis.cz

# Install Composer
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

# Display version information
RUN composer --version

WORKDIR /app

CMD composer
