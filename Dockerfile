FROM markwatsonatx/node-alpine

RUN mkdir -p /app

COPY src/app/public /app/public
COPY src/app/package.json /app

WORKDIR /app

RUN apk add --no-cache git \
  && npm install -g bower \
  && npm install

WORKDIR /app/public

RUN bower install --allow-root

WORKDIR /app

CMD ["npm","start"]

EXPOSE 8080
