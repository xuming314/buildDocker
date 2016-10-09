FROM node:latest

RUN npm config set cache /.npm
RUN npm config set registry https://registry.npm.taobao.org

RUN npm install -g pm2
RUN npm install -g grunt-cli
RUN npm install -g webpack
RUN npm install -g webot-cli
RUN npm install -g babel-cli
RUN npm nstall -g karma-cli
RUN npm install -g react-native-cli
RUN npm install -g electron-prebuilt
RUN npm install -g electron-packager
RUN npm install -g electron-builder
RUN npm install -g eslint
RUN npm install -g appium
RUN npm install -g nurl-cli

