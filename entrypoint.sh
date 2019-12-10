#!/bin/sh -l
composer global require friendsofphp/php-cs-fixer:2
php ~/.composer/vendor/bin/php-cs-fixer fix $*