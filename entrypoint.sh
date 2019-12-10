#!/bin/sh -l
composer global require friendsofphp/php-cs-fixer
php ~/.composer/vendor/bin/php-cs-fixer fix $*