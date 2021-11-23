FROM node:16.13.0-alpine

# basic tools
RUN apk update && apk upgrade \
    && apk add --no-cache \
    udev  \
    chromium \
    nss \
    freetype \
    harfbuzz \
    ca-certificates \
    ttf-freefont \
    coreutils \
    curl \
    ffmpeg \
    figlet \
    jq \
    moreutils \
    cmake bash git vim \
    xauth  
#end

#  set PUPPETEER
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser
# end 

RUN npm install puppeteer@10.2.0 -g

RUN export WECHATY_PUPPET=wechaty-puppet-wechat
