FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
  curl \
  make 

RUN curl https://storage.googleapis.com/golang/go1.7.4.linux-amd64.tar.gz \
  | tar xz -C /usr/local

ENV PATH $PATH:/usr/local/go/bin

RUN apt-get remove --purge -y curl

RUN adduser user --gecos "" --disabled-password

USER user

