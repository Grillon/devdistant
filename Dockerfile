# Version: 0.0.3
FROM centos:latest
MAINTAINER Thierry VOGEL "thierry.vogel@moncourriel.eu"
#WORKDIR /root
RUN yum -y install tar sudo
RUN yum -y install git tig tmux vim 

RUN ["/usr/sbin/useradd", "-m","-G","wheel","thierry"]

RUN sed -i '/NOPASSWD/s/#//' /etc/sudoers
RUN sed -i 's/^Defaults    requiretty/#Defaults    requiretty/' /etc/sudoers

RUN curl -sL https://rpm.nodesource.com/setup | bash -
RUN yum install -y nodejs

ENV HOME /home/thierry
USER thierry
WORKDIR /home/thierry
ADD npm.sh /home/thierry/npm.sh
ADD rvm.sh /home/thierry/rvm.sh
ADD mini_titi.tar.gz /home/thierry
ADD ".tmux.conf" /home/thierry/.tmux.conf
ADD ".bashrc" /home/thierry/.bashrc
RUN /home/thierry/npm.sh
RUN /home/thierry/rvm.sh
ADD ".bashrc" /home/thierry/.bashrc
