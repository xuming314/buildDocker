FROM node:latest

RUN npm config set cache /.npm
RUN npm config set registry https://registry.npm.taobao.org

RUN sudo npm install -g pm2
RUN sudo npm install -g grunt-cli
RUN sudo npm install -g webpack
RUN sudo npm install -g webot-cli
RUN sudo npm install -g babel-cli
RUN sudo npm nstall -g karma-cli
RUN sudo npm install -g react-native-cli
RUN sudo npm install -g electron-prebuilt
RUN sudo npm install -g electron-packager
RUN sudo npm install -g electron-builder
RUN sudo npm install -g eslint
RUN sudo npm install -g appium
RUN sudo npm install -g nurl-cli

COPY jobs/. /packages


