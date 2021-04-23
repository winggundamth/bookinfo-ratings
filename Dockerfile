FROM node:14.15.4-alpine3.12

LABEL org.opencontainers.image.source https://github.com/winggundamth/bookinfo-ratings
WORKDIR /usr/src/app/

COPY src/ /usr/src/app/
RUN npm install

EXPOSE 8080

CMD ["node", "/usr/src/app/ratings.js", "8080"]