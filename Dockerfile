FROM perfoma/shaker:1.2.0

LABEL maintainer="Oleg Basov <obasov@mirantis.com>" version="1.0"

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt upgrade -yq && \
    DEBIAN_FRONTEND=noninteractive apt install -yq sudo qemu-utils kpartx sudo squashfs-tools \
        python3 python3-dev python3-pip python3-venv python3-tk wget

#COPY . /opt/shaker

# git clone https://github.com/Mirantis/disk_perf_test_tool.git /opt/disk_perf_tool

#RUN git clone https://github.com/koder-ua/cephlib.git /opt/cephlib && \
#    git clone https://github.com/koder-ua/xmlbuilder3.git /opt/xmlbuilder3 && \
#    git clone https://github.com/koder-ua/agent.git /opt/agent && \
#    python3.6 -m pip install pip --upgrade && \
#    cd /opt/wally && \
#    python3.6 -m pip install wheel && \
#    python3.6 -m pip install -r requirements.txt && \
#    python3.6 -m pip install -U cryptography && \
#    ln -s /opt/wally/scripts/shaker /usr/bin && \
#    chmod a+x /opt/wally/scripts/wally

#RUN apt purge -y python3-dev build-essential && apt -y autoremove

#ENV PYTHONPATH /opt/cephlib:/opt/xmlbuilder3:/opt/agent:/opt/

CMD ["/bin/bash"]
