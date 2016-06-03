FROM php:7-cli

# Install Composer
RUN php -r "readfile('https://getcomposer.org/installer');" | php -- --install-dir=/usr/local/bin --filename=composer

# Display version information
RUN composer --version

CMD composer
