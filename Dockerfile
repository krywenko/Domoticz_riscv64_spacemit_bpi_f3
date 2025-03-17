# Dockerfile
FROM harbor.spacemit.com/bianbu/bianbu:latest
RUN sed -i '/^Types:/ s/$/ deb-src/' /etc/apt/sources.list.d/bianbu.sources
RUN sed -i '/^Suites:/ s/$/ noble-porting\/snapshots\/v2.1 /'  /etc/apt/sources.list.d/bianbu.sources
RUN apt-get update
RUN apt-get install -y make gcc g++ libssl-dev git libcurl4-gnutls-dev libusb-dev libsqlite3-dev python3-dev zlib1g-dev liblua5.3-dev uthash-dev wget cmake libboost-all-dev

COPY  install.sh /install.sh
RUN chmod +x /install.sh
RUN /install.sh

EXPOSE 8080
EXPOSE 443
#RUN apt-get remove --purge  -y make gcc g++ libssl-dev git libcurl4-gnutls-dev libusb-dev libsqlite3-dev python3-dev zlib1g-dev liblua5.3-dev uthash-dev cmake libboost-all-dev
ENTRYPOINT [ "/opt/domoticz/./domoticz" ]
