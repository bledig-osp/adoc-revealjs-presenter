FROM ruby:2.5
MAINTAINER Bernd Ledig <bernd.ledig@ottogroup.com>

RUN apt-get update
RUN apt-get install -y inotify-tools

RUN mkdir -p /opt/adoc-reveal && mkdir -p /slides/html5
WORKDIR /opt/adoc-reveal

COPY Gemfile .
RUN bundle install --system

COPY . .

CMD ./bin/live-build.sh
