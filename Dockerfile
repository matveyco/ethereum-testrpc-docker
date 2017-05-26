FROM ubuntu:16.04

RUN apt-get update
RUN apt-get -y install software-properties-common
#RUN add-apt-repository ppa:ethereum/ethereum
#RUN add-apt-repository ppa:ethereum/ethereum-dev
#RUN apt-get update
#RUN apt-get -y install ethereum solc 

RUN apt-get -y install build-essential
RUN apt-get -y install git
RUN apt-get -y install curl

# RUN apt-get -y install nodejs
#RUN apt-get -y install nodejs-legacy

RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -
RUN apt-get -y install -y nodejs
RUN apt-get -y install npm

# RUN npm install -g node-gyp

RUN npm install -g ethereumjs-testrpc

#RUN apt-get install -y python-pip python-dev libyaml-dev libssl-dev

#RUN pip install eth-testrpc
#RUN ifconfig

EXPOSE 8545

CMD testrpc --domain=0.0.0.0
