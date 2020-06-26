FROM ubuntu:18.04

RUN apt update && \
    apt install -y ansible bash-completion vim sshpass  && \
    ssh-keygen -t rsa -P "" -f ~/.ssh/id_rsa

COPY loop.sh /
VOLUME /etc/ansible

CMD bash /loop.sh
