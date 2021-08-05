##################Dockerfile##################
FROM openjdk:8

RUN apt-get update
RUN apt-get install -y bzip2 
RUN apt-get install -y wget
RUN apt-get install -y gcc 
RUN apt-get install -y git 
RUN apt-get install -y curl

RUN apt-get update
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip

RUN pip3 install gdown==3.12.2
RUN pip3 install requests==2.24.0
RUN pip3 install pandas==1.1.3
RUN pip3 install elasticsearch==7.11.0
RUN pip3 install pyspark==3.1.1
RUN pip3 install esdk-obs-python==3.20.11 --trusted-host pypi.org
RUN pip3 install Pillow==8.2.0
RUN pip3 install xlrd==1.1.0
RUN pip3 install xlsxwriter==1.4.3

RUN apt-get install -y zip 

RUN mkdir /yan/
RUN chmod 777 /yan/ 

RUN useradd -u 8877 yan
USER yan

WORKDIR /yan/
RUN wget http://dexter.isti.cnr.it/dexter.tar.gz
RUN tar xvzf /yan/dexter.tar.gz

WORKDIR /yan/
RUN mv /yan/dexter2/* ./

USER root

RUN pip3 install requests==2.24.0

USER yan

EXPOSE 8080

RUN echo "gdsgewr"

RUN git clone https://github.com/yanliang12/yan_entity_linking.git
RUN mv yan_entity_linking/* ./
RUN rm -r yan_entity_linking

CMD bash
###########Dockerfile############