# 1. Usamos la imagen oficial de Node 20 en Alpine (Segura, ligera y con apk)
FROM node:20-alpine

# 2. Instalamos Perl y dependencias del sistema necesarias
# - dumb-init: Maneja los procesos correctamente (crucial para Docker)
# - graphicsmagick: Recomendado para n8n
# - perl y sus librerías
RUN apk add --no-cache \
    dumb-init \
    graphicsmagick \
    perl \
    perl-json \
    perl-libwww \
    perl-lwp-protocol-https \
    bash

# 3. Instalamos la ÚLTIMA versión de n8n directamente desde NPM
# Esto asegura que siempre tengas la versión más reciente "real"
RUN npm install -g n8n

# 4. Preparamos el entorno de trabajo
WORKDIR /data
RUN chown node:node /data

# 5. Configuración de usuario y entorno
USER node
ENV NODE_ENV=production
ENV N8N_USER_ID=1000

# 6. Ejecución segura
ENTRYPOINT ["dumb-init", "--"]
CMD ["n8n"]
