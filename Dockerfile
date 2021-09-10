FROM debian:latest

ARG tag_version

RUN apt-get update && \
  apt-get install -y git build-essential cmake bison re2c && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists

RUN mkdir /opt/clingo
RUN cd /opt/clingo && \
  git init && \
  git remote add origin https://github.com/potassco/clingo.git && \
  if test -z "$tag_version" ; \
    then git fetch origin master                && git pull origin master; \
    else git fetch origin ${tag_version} && git pull origin ${tag_version}; \
  fi && \
  git submodule update --init --recursive

WORKDIR /opt/clingo
RUN cmake -H/opt/clingo -B/opt/clingo -DCMAKE_BUILD_TYPE=release && \
  cmake --build /opt/clingo

ENV PATH $PATH:/opt/clingo/bin
