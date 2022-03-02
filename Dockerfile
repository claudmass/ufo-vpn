
    FROM ubuntu

    USER root

    RUN apt update -y
    RUN apt install -y openvpn | echo "y"
    RUN apt install  -y curl| echo "y"

    RUN apt install -y python3 python3-pip git python3-pycurl python3-geoip python3-whois python3-crypto python3-requests python3-scapy libgeoip1 libgeoip-dev

    WORKDIR /home
    
    COPY autovpn3.sh ./
    RUN chmod +x ./autovpn3.sh && ./autovpn3.sh | echo "Y"


    RUN git clone https://github.com/epsylon/ufonet.git

    RUN cd ./ufonet

    WORKDIR /home/ufonet