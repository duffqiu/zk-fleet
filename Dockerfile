FROM duffqiu/zookeeper:latest
MAINTAINER duffqiu@gmail.com

ADD conf/zoo.cfg /zookeeper/conf/zoo.cfg

Add startzk /usr/bin/startzk

RUN chmod +x /usr/bin/startzk

ENTRYPOINT [ "/usr/bin/startzk" ]
