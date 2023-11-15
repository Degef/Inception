#!/bin/sh

wp --allow-root --path=/var/www core install \
  --url="$DOMAIN_NAME" \
  --title="Degef's WordPress" \
  --admin_user="$WPADUSER" \
  --admin_password="$WPADPASS" \
  --admin_email="dsium@student.42abudhabi.ae"

wp user create "$WPUSER1" "user1@student.42abudhabi.ae" \
  --role=author \
  --user_pass="$WPUSER1PASS" \
  --allow-root

wp --allow-root --path=/var/www option update blogname "Degef's Word-Press"
wp --allow-root --path=/var/www option update blogdescription "The Inception of Things"
wp --allow-root --path=/var/www option update blog_public 0

REDIS CACHE
wp config set WP_CACHE true --allow-root
wp config set WP_CACHE_KEY_SALT 'dsium.42.fr' --allow-root

wp plugin install redis-cache --activate --allow-root
wp redis enable --allow-root

wp theme install twentynineteen --activate --allow-root

wp plugin update --all --allow-root

/usr/sbin/php-fpm8 -F