FROM centos/systemd

MAINTAINER "Gabriel Ramírez Cázares" <gabriel.ramirez.cazares@gmail.com>

RUN \
   yum -y install sudo && \
   yum -y install openssh-clients && \
   yum -y install openssh-server && \
   yum clean all

RUN systemctl enable sshd.service

RUN useradd ansible

COPY ansible /etc/sudoers.d/ansible

RUN echo "ansible:ansible" | chpasswd

CMD ["/usr/sbin/init"]
