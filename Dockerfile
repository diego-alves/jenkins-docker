FROM jenkins:1.565.3
MAINTAINER Diego Alves <dfqalves@gmail.com>

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN  /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt