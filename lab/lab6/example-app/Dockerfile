FROM composer as builder

COPY . /app
RUN composer install

FROM docker.io/bitnami/laravel:10 as runner

COPY . /app
COPY --from=builder /app/vendor /app/vendor
RUN cp .env.example .env
