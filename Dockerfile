FROM duffqiu/zookeeper:latest
MAINTAINER duffqiu@gmail.com

ADD zookeeper-3.6.0-SNAPSHOT.tar.gz /zk-tmp.tar.gz
RUN mv /zk-tmp.tar.gz/zookeeper-3.6.0-SNAPSHOT /zookeeper-3.6.0
RUN rm -rf /zk-tmp.tar.gz

ADD conf/zoo.cfg /zookeeper-3.6.0/conf/zoo.cfg

ADD startzk /usr/bin/startzk

RUN chmod +x /usr/bin/startzk

ENV JAVA_HOME=/usr/java/jdk1.7.0_75 JRE_HOME=/usr/java/jdk1.7.0_75/jre PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin CLASSPATH=:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib

#ENV JVMFLAGS=-Dsun.net.inetaddr.ttl=0

ENTRYPOINT [ "/usr/bin/startzk" ]
