FROM debian:latest

RUN apt-get update && apt-get install -y git build-essential bison re2c scons

RUN cd /opt && git clone https://github.com/potassco/clingo.git
WORKDIR /opt/clingo
RUN scons --build-dir=release

ENV PATH $PATH:/opt/clingo/build/release
