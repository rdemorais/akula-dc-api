FROM ubuntu
MAINTAINER Rafael de Morais "rdemorais.freitas@gmail.com"
RUN apt-get update && \
    apt-get install -y nodejs --no-install-recommends && \
    apt-get install -y npm --no-install-recommends && \
    apt-get install -y git --no-install-recommends && \
    mkdir /opt/db && \
    cd /opt && \
    git clone https://github.com/rdemorais/akula-rest-apis.git && \
    cd /opt/akula-rest-apis && \
    ln -s /usr/bin/nodejs /usr/bin/node && \
    npm install && \
    apt-get remove -y git && \
    apt-get clean
EXPOSE 3000
ENTRYPOINT ["./opt/akula-rest-apis/bin/www"]