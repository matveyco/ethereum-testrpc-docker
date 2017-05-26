FROM library/ubuntu:trusty
MAINTAINER bob
USER root

RUN apt-get update
RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:ethereum/ethereum
RUN add-apt-repository ppa:ethereum/ethereum-dev
RUN apt-get update
RUN apt-get -y install ethereum solc 

RUN apt-get -y install build-essential

RUN apt-get -y install nodejs
RUN apt-get -y install nodejs-legacy
RUN apt-get -y install npm

RUN npm install -g node-gyp

RUN npm install -g ethereumjs-testrpc

#RUN apt-get install -y python-pip python-dev libyaml-dev libssl-dev

#RUN pip install eth-testrpc
#RUN ifconfig

EXPOSE 8545

CMD testrpc --domain=0.0.0.0
