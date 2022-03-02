
    FROM ubuntu

    USER root

    RUN apt update -y
    RUN apt install -y openvpn | echo "y"
    RUN apt install  -y curl| echo "y"

    WORKDIR /home
    
    COPY autovpn3.sh ./
    CMD chmod +x ./autovpn3.sh && ./autovpn3.sh | echo "Y"


    RUN git clone https://github.com/epsylon/ufonet.git
    RUN cd ./ufonet
    WORKDIR /home/ufonet