FROM ubuntu:16.04
MAINTAINER TzLibre "tzlibre@mail.com"

RUN apt-get update; apt-get -y install python-dev python-pip git libsodium-dev
COPY gen-signature.sh /tmp
ADD pykeychecker /tmp/pykeychecker/

WORKDIR /tmp
RUN cd pykeychecker; pip install -r requirements.txt

CMD bash gen-signature.sh
