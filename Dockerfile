FROM duffqiu/zookeeper:latest
MAINTAINER duffqiu@gmail.com

Add zookeeper-3.4.7-SNAPSHOT.tar.gz /zookeeper-3.4.7-SNAPSHOT.tar.gz
RUN tar zxf /zookeeper-3.4.7-SNAPSHOT.tar.gz
RUN mv /zookeeper-3.4.7-SNAPSHOT /zookeeper-3.4.7
RUM rm -rf /zookeeper-3.4.7-SNAPSHOT.tar.gz

ADD conf/zoo.cfg /zookeeper-3.4.7/conf/zoo.cfg

Add startzk /usr/bin/startzk

RUN chmod +x /usr/bin/startzk

WORKDIR /zookeeper-3.4.7

ENTRYPOINT [ "/usr/bin/startzk" ]
