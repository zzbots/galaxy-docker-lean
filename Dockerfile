FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive
ENV UBUNTU_VERSION 20.04

RUN apt-get update && \
    apt-get --yes upgrade && \
    apt-get install -y curl ca-certificates jq xz-utils build-essential python2-minimal && \
    rm -rf /var/lib/apt/lists/*

ADD ./app /app
RUN mkdir -p /app/bundle

CMD ["/app/run.sh"]