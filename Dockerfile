FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install software-properties-common

RUN apt-get -y install build-essential
RUN apt-get -y install git
RUN apt-get -y install curl

RUN apt-get -y install apt-transport-https

RUN touch /etc/apt/sources.list.d/nodesource.list
RUN echo 'deb https://deb.nodesource.com/node_6.x xenial main' >> /etc/apt/sources.list.d/nodesource.list
RUN echo 'deb-src https://deb.nodesource.com/node_6.x xenial main' >> /etc/apt/sources.list.d/nodesource.list
RUN curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -

RUN apt-get update

RUN apt-get -y install nodejs

# updating npm to latest version
RUN curl https://www.npmjs.com/install.sh | sh

RUN apt-get -y install python

RUN npm install -g ethereumjs-testrpc

EXPOSE 8545

CMD testrpc --domain=0.0.0.0
