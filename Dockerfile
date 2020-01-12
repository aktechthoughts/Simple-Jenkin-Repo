FROM node:7.8-alpine
LABEL maintainer "Abhishek Kumar<abhishek_ku@yahoo.com>"

# Install all build dependencies
# Add bash for debugging purposes
WORKDIR  /home/nodejs/app
COPY package.json .

# Install all npm dependencies
# Cleanup
RUN npm install --silent --production \
    && apk del build-dependencies \
    && rm -rf /var/cache/apk/*

# Copy entire app over
COPY . .
EXPOSE 3000
CMD ["node", "index.js"]

RUN groupadd -r nodejs && useradd -m -r -g -s /bin/bash nodejs nodejs
USER nodejs