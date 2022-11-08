FROM ubuntu:20.04

RUN apt-get update

RUN apt-get upgrade -y

RUN apt-get install -y git jq

# Setup the correct timezone and locale
ENV TZ=America/Los_Angeles
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN locale-gen "en_US.UTF-8"
RUN dpkg-reconfigure locales
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen && \
    locale-gen
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
