FROM jenkins:1.565.3
MAINTAINER Diego Alves <dfqalves@gmail.com>

###  Install ssh keys
WORKDIR /var/jenkins_home
COPY ssh .ssh

USER root 
# RUN mkdir .ssh
# RUN ssh-keyscan -t rsa bitbucket.org >> known_hosts 

# Update Git to the latest version
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:git-core/ppa && \
    sed -i 's/jessie/xenial/g' /etc/apt/sources.list.d/git-core-ppa-jessie.list && \    
    apt-get update && \
    apt-get install -y git

USER jenkins

RUN git config --global user.email "you@example.com"
RUN git config --global user.name  "Your Name"

###  Install plugins
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN  /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt