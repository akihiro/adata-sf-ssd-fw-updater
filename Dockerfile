FROM ubuntu:14.04
MAINTAINER hiroaki mizuguchi <mhiroaki@gmail.com>

ENV HOME /root
ENV DEBIAN_FRONTEND noninteractive
RUN dpkg --add-architecture i386 && \
    apt-get -q update && \
    apt-get -qy install libsm6:i386 libxrender1:i386 libxext6:i386 libfontconfig1:i386 libstdc++6:i386 libc6:i386 && mkdir -p /work
WORKDIR /work
