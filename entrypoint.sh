#!/bin/sh -l
composer global require prestashop/php-dev-tools:v2.2
php ~/.composer/vendor/bin/php-cs-fixer fix $*