FROM node:6.16.0

RUN npm config set strict-ssl false
RUN npm install deployd-cli -g

RUN dpd create hello
WORKDIR hello

CMD dpd -H $MONGO_HOST -P $MONGO_PORT
