FROM php:8.2-apache

# Install ekstensi mysqli untuk koneksi ke MySQL
RUN docker-php-ext-install mysqli

# Aktifkan mod_rewrite (opsional, kalau pakai .htaccess atau routing Laravel)
RUN a2enmod rewrite

# Salin semua file project ke folder public Apache
COPY . /var/www/html/

# Ubah hak akses (opsional)
RUN chown -R www-data:www-data /var/www/html
