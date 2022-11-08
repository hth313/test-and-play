FROM ubuntu:20.04

RUN apt-get update

RUN apt-get upgrade -y

apt-get install -y git jq
