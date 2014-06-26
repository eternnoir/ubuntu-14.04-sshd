#
# Ubuntu 14.04 with sshd Dockerfile
#
# Pull base image.
FROM ubuntu:14.04
MAINTAINER Frank Wang "eternnoir@gmail.com"

#Update
RUN apt-get update && apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN echo 'root:myrootpassworld' | chpasswd
RUN sed --in-place=.bak 's/without-password/yes/' /etc/ssh/sshd_config
EXPOSE 22
CMD /usr/sbin/sshd -D
