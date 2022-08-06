FROM nginx:stable-alpine
WORKDIR /usr/share/nginx/html

RUN addgroup -S efr && adduser -S efr -G efr && \
    chown -R efr:efr /var/log /etc/nginx /var/cache/nginx /var/run/
COPY --chown=efr:efr . .
USER efr