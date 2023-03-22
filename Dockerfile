FROM python:3.8.0
ENV PYTHONUNBUFFERED 1
RUN mkdir /graph_wiki
RUN mkdir /graph_wiki/data
WORKDIR /graph_wiki/
RUN apt-get update && apt-get install vim -y && apt-get install -y apt-utils
RUN apt-get install -y nodejs npm
RUN apt-get install -y net-tools
COPY . /findge_wiki/
RUN npm install -g tiddlywiki@5.2.5
COPY ./core/modules/server/server.js /usr/local/lib/node_modules/tiddlywiki/core/modules/server/server.js
COPY ./data/tiddlywiki.info /graph_wiki/data/tiddlywiki.info
RUN chmod +rwx /graph_wiki/data/tiddlywiki.info
EXPOSE 8080
