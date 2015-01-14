FROM ubuntu:14.04
MAINTAINER Jarret Raim <jarret@raim.io>

RUN apt-get -qq update &&\
    apt-get -qy --force-yes dist-upgrade

RUN apt-get install -qy --force-yes python-cheetah git

# apt clean
RUN apt-get clean &&\
  rm -rf /var/lib/apt/lists/* &&\
  rm -rf /tmp/*

VOLUME /mnt/config
VOLUME /mnt/local
VOLUME /mnt/nas

RUN git clone -q --depth 1 -b master https://github.com/midgetspy/Sick-Beard.git /opt/sickbeard

ADD ./start.sh /opt/start.sh
RUN chmod u+x  /opt/start.sh

EXPOSE 8081

CMD ["/opt/start.sh"]