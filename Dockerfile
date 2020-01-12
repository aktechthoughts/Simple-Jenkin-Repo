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
COPY package.json .

# Install all npm dependencies
# Cleanup
RUN npm install --silent --production 
   
# Copy entire app over
COPY . .
EXPOSE 3000
CMD ["node", "public/index.html"]

#RUN groupadd -r nodejs && useradd -m -r -g -s /bin/bash nodejs nodejs
#USER nodejs