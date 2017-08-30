FROM ruby:2.3
MAINTAINER Bernd Ledig <ledig@working-it.de>

RUN apt-get update
RUN apt-get install -y inotify-tools

RUN mkdir -p /opt/adoc-reveal && mkdir /slides
WORKDIR /opt/adoc-reveal

COPY Gemfile .
RUN bundle install --system

RUN mkdir -p /slides/html5
COPY . .

CMD ./bin/live-build.sh
