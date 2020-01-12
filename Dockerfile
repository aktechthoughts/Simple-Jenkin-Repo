FROM node:7.8-alpine
LABEL maintainer "Abhishek Kumar<abhishek_ku@yahoo.com>"

# Install all build dependencies
# Add bash for debugging purposes
RUN apk update \
    && apk add  gcc \
        wget \
        git \
    && apk add \
        bash

WORKDIR  /home/nodejs/app
RUN mkdir -p /home/nodejs/app/node_modules

COPY package.json .

# Install all npm dependencies
# Cleanup
RUN npm install --silent --production 
   
# Copy entire app over
COPY . .
EXPOSE 8080
CMD ["node", "app.js"]

#RUN groupadd -r nodejs && useradd -m -r -g -s /bin/bash nodejs nodejs
#USER nodejs


