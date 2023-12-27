FROM python:3-alpine

RUN python -m pip install --upgrade pip setuptools virtualenv \
    pip3 install --user --upgrade buildozer \
    apk add zip unzip openjdk11

ENV LOCAL_BIN=~/.local/bin
ENV JAVA_HOME=/usr/lib/jvm/java-11-openjdk
ENV PATH=$PATH:$LOCAL_BIN:$JAVA_HOME/bin:$JAVA_HOME