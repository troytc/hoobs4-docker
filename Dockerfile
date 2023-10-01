FROM debian

RUN apt update && apt install wget curl lsb-release sudo -y
RUN wget -qO- https://dl.hoobs.org/stable | bash -
RUN apt install hoobsd hoobs-cli hoobs-gui -y
RUN sudo hbs install -p 80

CMD ["/usr/bin/hoobsd", "hub"]
