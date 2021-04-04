FROM ubuntu

RUN \
   apt update && \
   apt install openssh-server sudo -y

RUN useradd -rm -d /home/ansible -s /bin/bash ansible

COPY ansible /etc/sudoers.d/ansible

RUN echo "ansible:ansible" | chpasswd

RUN service ssh start

CMD ["/usr/sbin/sshd","-D"]

