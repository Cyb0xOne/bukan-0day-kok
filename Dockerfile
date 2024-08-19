FROM php:7.4-apache
LABEL authors="Reky"

RUN apt-get -y update
RUN apt-get install -y libicu-dev libpq-dev libzip-dev unzip git cron mariadb-client
RUN docker-php-ext-install intl pdo pdo_pgsql zip mysqli

COPY . /var/www/html/
RUN rm -fr /var/www/html/.idea/
RUN cp /var/www/html/application/config/database.php /var/www/html/application/config/database.php.example
RUN chown -R root:root /var/www/html/
RUN chmod -R 777 /var/www/html/application/config/database.php

RUN echo "* * * * * root cp /var/www/html/application/config/database.php.example /var/www/html/application/config/database.php" >> /etc/crontab
RUN echo "#!/bin/sh\ncron\n/usr/local/bin/apache2-foreground" > /usr/bin/run

RUN echo "Cyb0x1{`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13`}" > /var/www/html/flag.txt
RUN mv /var/www/html/flag.txt /var/www/html/`head /dev/urandom | tr -dc A-Za-z0-9 | head -c 13`_flag.txt
RUN chmod 600 *_flag.txt
RUN chmod u+x /usr/bin/run

CMD ["run"]