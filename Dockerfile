FROM node:latest

RUN npm config set cache /.npm

RUN npm install -g pm2
RUN npm install -g grunt-cli
RUN npm install -g webpack
RUN npm install -g webot-cli
RUN npm install -g babel-cli
RUN npm install -g karma-cli
RUN npm install -g react-native-cli
RUN npm install -g electron-prebuilt
RUN npm install -g electron-packager
RUN npm install -g electron-builder
RUN npm install -g eslint
RUN npm install -g nurl-cli
#RUN npm install -g appium

RUN mkdir /packages
COPY jobs/. /packages
RUN cd /packages \
    && npm install package-common.json \
    && npm install package-build.json \
    && npm install package-client.json \
    && npm install package-server.json \
    && cd .. \
    && rm -rf /packages
