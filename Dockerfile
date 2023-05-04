FROM ubuntu:latest

RUN apt update && apt upgrade -y && apt-get install -y python3.6

RUN mkdir A
RUN mkdir B
RUN mkdir C

RUN mkdir files
WORKDIR /files
RUN cat > a.txt
RUN cat > b.txt
RUN cat > c.txt

WORKDIR /
RUN apt-get update && apt-get install -y git
RUN git clone https://github.com/ydykim/assignment_week8
