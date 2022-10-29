# syntax=docker/dockerfile:1
FROM node:12-alpine
RUN apk update
RUN apk add curl
RUN curl https://www.python.org/ftp/python/3.11.0/Python-3.11.0b4.tgz  -o Python-3.11.0b4.tgz
RUN tar -zxvf Python-3.11.0b4.tgz
RUN echo "example build our python..."
RUN rm -f -r Python-3.11.0b4.tgz Python-3.11.0b4
WORKDIR /app
CMD echo hello
