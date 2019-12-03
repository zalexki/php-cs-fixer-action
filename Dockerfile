FROM php:7.3

LABEL "com.github.actions.name"="PHP CS Fixer check"
LABEL "com.github.actions.description"="Run PHP CS Fixer"
LABEL "com.github.actions.icon"="check"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="https://github.com/zalexki/php-cs-fixer-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="zalexki <haumalex@gmail.com>"

RUN apt-get update && apt-get install -y \ 
    git \
    zip \
    libzip-dev
RUN docker-php-ext-configure zip --with-libzip
RUN docker-php-ext-install zip

COPY --from=composer:1.8.6 /usr/bin/composer /usr/bin/composer
RUN composer global require hirak/prestissimo

ADD entrypoint.sh /entrypoint.sh
ADD .php_cs.dist /.php_cs.dist.default
ENTRYPOINT ["/entrypoint.sh"]
