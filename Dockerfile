FROM debian:latest

ENV CLINGO_TAG_VERSION v5.2.2

RUN apt-get update && \
  apt-get install -y git build-essential cmake bison re2c && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists

RUN mkdir /opt/clingo
RUN cd /opt/clingo && \
  git init && \
  git remote add origin https://github.com/potassco/clingo.git && \
  git fetch origin ${CLINGO_TAG_VERSION} && \
  git pull origin ${CLINGO_TAG_VERSION} && \
  git submodule update --init --recursive

WORKDIR /opt/clingo
RUN cmake -H/opt/clingo -B/opt/clingo -DCMAKE_BUILD_TYPE=release && \
  cmake --build /opt/clingo

ENV PATH $PATH:/opt/clingo/bin
