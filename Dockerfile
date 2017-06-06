FROM markwatsonatx/node-alpine

RUN mkdir -p /app

ADD src/app/public /app/public
ADD src/app/package.json /app/package.json

WORKDIR /app

RUN apk update
RUN apk add git
RUN npm install -g bower
RUN npm install

WORKDIR /app/public

RUN bower install --allow-root

WORKDIR /app

CMD ["npm","start"]

EXPOSE 8080
