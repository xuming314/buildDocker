FROM node:latest

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
COPY packages/. /packages
RUN cd /packages/common && npm install
RUN cd /packages/build && npm install
RUN cd /packages/server && npm install
RUN cd /packages/client && npm install
RUN cd / && rm -rf /packages

EXPOSE 80