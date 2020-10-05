FROM nginx:1.17-alpine as server
LABEL maintainer="tlogik@pm.me"

# Install nvm with node and npm
# Install node with npm and yarn
RUN apk add --no-cache --repository http://nl.alpinelinux.org/alpine/edge/main libuv \
  && apk add --no-cache --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/main nodejs=12.18.4-r0 npm=12.18.4-r0 \
  && apk add --no-cache --update-cache --repository http://dl-cdn.alpinelinux.org/alpine/edge/community yarn=1.22.10-r0 \
  && echo "NodeJS Version:" "$(node -v)" \
  && echo "NPM Version:" "$(npm -v)" \
  && echo "Yarn Version:" "$(yarn -v)"
