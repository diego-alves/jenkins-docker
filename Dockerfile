FROM jenkins:1.565.3

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN  /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt