# 1. Usamos la última versión oficial (Basada en Alpine Linux)
FROM n8nio/n8n:latest

# 2. Cambiamos a root para poder instalar
USER root

# 3. INSTALACIÓN SEGURA EN ALPINE:
# Usamos la ruta absoluta "/sbin/apk" para evitar el error 127.
# Los nombres de paquetes en Alpine son "perl-..."
RUN /sbin/apk update --no-cache && \
    /sbin/apk add --no-cache \
    perl \
    perl-json \
    perl-libwww \
    perl-lwp-protocol-https

# 4. Volvemos al usuario node por seguridad
USER node
