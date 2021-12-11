FROM gitpod/workspace-full-vnc

USER root
RUN apt update && apt install -y socat nasm netcat

USER gitpod
SHELL ["/bin/bash", "-c"]
RUN pip install flask requests lxml
RUN mkdir /home/gitpod/bin
RUN wget https://github.com/downloads/0vercl0k/rp/rp-lin-x64 -O /home/gitpod/bin/rp++
RUN git clone https://github.com/longld/peda.git /home/gitpod/peda
RUN git clone https://github.com/scwuaptx/Pwngdb.git /home/gitpod/Pwngdb
RUN cp /home/gitpod/Pwngdb/.gdbinit /home/gitpod
RUN pip install pwntools
RUN gem install seccomp-tools one_gadget
