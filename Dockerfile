FROM ubuntu:16.04
MAINTAINER KAMO Yasuhiro <duck1218+github@gmail.com>

RUN apt-get update \
    && apt-get install -qq build-essential fakeroot devscripts cdbs

WORKDIR /opt/workspace/src

ENTRYPOINT [ "debuild", "--no-tgz-check", "-uc", "-us" ]
