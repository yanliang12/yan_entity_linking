###########Dockerfile############
FROM ubuntu:xenial

RUN apt-get update
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y wget
RUN apt-get install -y git 
RUN apt-get install -y curl

RUN apt-get install -y python3-pip
RUN apt-get install -y python3-dev

RUN wget http://dexter.isti.cnr.it/dexter.tar.gz

RUN apt-get install -y tar
RUN tar xvzf dexter.tar.gz

RUN mv /dexter2/* ./

RUN pip3 install requests==2.24.0
RUN pip3 install rdflib==5.0.0
RUN pip3 install pyspark==3.0.1

ENV PYSPARK_PYTHON /usr/bin/python3.5
ENV PYSPARK_DRIVER_PYTHON /usr/bin/python3.5

EXPOSE 8080

RUN echo "gdsgewr"

RUN git clone https://github.com/yanliang12/yan_entity_linking.git
RUN mv yan_entity_linking/* ./
RUN rm -r yan_entity_linking

CMD bash
###########Dockerfile############
