# Use a imagem base do PHP 5.4 sem Apache
FROM php:5.4-cli

# Instale o Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Defina o diretório de trabalho
WORKDIR /app

# Comando padrão (opcional)
CMD ["php"]

COPY . /var/www/html/
