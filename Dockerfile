FROM dreamlabs/php-composer:latest

RUN wget http://get.sensiolabs.org/security-checker.phar -o /root/security.phar && \
    chmod +x /root/security.phar;

ENTRYPOINT ["php", "/root/security.phar"]