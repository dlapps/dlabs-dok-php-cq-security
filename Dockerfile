FROM dreamlabs/php-composer:latest

RUN composer global require sensiolabs/security-checker && \
    ln -s /root/.composer/vendor/bin/security-checker /usr/bin/security;

ENTRYPOINT ["security"]