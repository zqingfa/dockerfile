FROM ubuntu:18.04
# RUN sed -i 's/archive.ubuntu/mirrors.tencentyun/g' /etc/apt/sources.list && \
#     apt update && apt install -y ansible bash-completion openssh-server vim &&  \
#     (echo 123123 ;sleep 0.3;echo 123123)|passwd root  && \
#     mkdir /root/.ssh/ /run/sshd && \
#     sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

RUN apt update && apt install -y ansible bash-completion openssh-server vim &&  \
    echo 123123 |passwd root -q  && \
    mkdir /root/.ssh/ /run/sshd && \
    sed -i 's/#PermitRootLogin prohibit-password/PermitRootLogin yes/g' /etc/ssh/sshd_config

#COPY sshd_config /etc/ssh/
COPY authorized_keys /root/.ssh/authorized_keys
ENV authorized_keys $(cat /root/.ssh/authorized_keys)
COPY run.sh /
VOLUME /etc/ansible
VOLUME [ "/root/.ssh/" ]
EXPOSE 22

CMD bash /run.sh
