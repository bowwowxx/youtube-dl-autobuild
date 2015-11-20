FROM ubuntu:14.04
MAINTAINER bowwow "bowwow@bowwow.com"

RUN locale-gen zh_TW
RUN locale-gen zh_TW.UTF-8

RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:kirillshkrogalev/ffmpeg-next
RUN apt-get update
RUN apt-get install -y ffmpeg python wget
RUN wget https://yt-dl.org/downloads/2015.11.19/youtube-dl -O /usr/local/bin/youtube-dl
RUN chmod a+rx /usr/local/bin/youtube-dl
RUN mkdir -p /data

WORKDIR /data
EXPOSE 7777

CMD [ "bash" ]
