FROM maven:3-alpine

RUN useradd -m -u 1000 -s /bin/bash jenkins

RUN yum install -y openssh-clients