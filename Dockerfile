FROM composer:2.2

LABEL maintainer="Igor Finagin"

RUN composer global require ergebnis/composer-normalize && \
    composer global config allow-plugins.ergebnis/composer-normalize true

ENTRYPOINT ["composer", "normalize"]
