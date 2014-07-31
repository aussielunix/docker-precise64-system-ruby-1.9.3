# Ubuntu Precise/12.04 amd64 with system ruby 1.9.3 and bundler
#
FROM       ubuntu:12.04
MAINTAINER Mick Pollard "aussielunix@gmail.com"

# make sure the package repository is up to date
RUN apt-get update

RUN apt-get install -yq     \
    git                     \
    wget                    \
    curl                    \
    build-essential         \
    libmysqlclient-dev      \
    libssl-dev              \
    libreadline-dev         \
    libxslt1-dev            \
    libxml2-dev             \
    libsqlite3-dev          \
    libcurl4-openssl-dev    \
    zlib1g-dev              \
    libexpat1-dev           \
    libicu-dev              \
    ruby1.9.3               \
    m4

# forces ruby 1.9.3 to be the default
RUN apt-get autoremove -y --purge ^ruby1.8
RUN apt-get clean

RUN gem install bundler
