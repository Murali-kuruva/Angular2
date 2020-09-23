FROM node:9.6.1
RUN mkdir /user/src/app
WORKDIR /user/src/app
RUN npm install -g @angular/cli

COPY . /user/src/app
FROM nginx:1.17.1-alpine
CMD ng serve --host 0.0.0 --port 4200
