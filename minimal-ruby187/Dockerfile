FROM alpine

ENV RUBY_VERSION "1.8.7-p375"

ENV RUBYBUILD_PACKAGES \
  build-base \
  autoconf \
  git \
  subversion \
  bison \
  zlib-dev \
  openssl-dev \
  yaml-dev \
  readline-dev \
  ncurses-dev \
  libffi-dev \
  gdbm-dev \
  curl-dev \
  ruby-dev
  
ENV RUBYLIB_PACKAGES \
  libcurl \
  zlib \
  openssl \
  yaml \
  readline \
  ncurses \
  libffi \
  gdbm

ENV EXTRA_PACKAGES \
  ca-certificates \
  bash \
  curl \
  make

RUN apk update && \
    apk upgrade && \
    apk add $RUBYBUILD_PACKAGES $RUBYLIB_PACKAGES $EXTRA_PACKAGES && \
    git clone https://github.com/sstephenson/ruby-build.git /tmp/ruby-build && \
    cd /tmp/ruby-build && ./install.sh && cd - && rm -rf /tmp/ruby-build && \
    ruby-build -v $RUBY_VERSION /usr/local && \
    apk del $RUBYBUILD_PACKAGES && \
    rm -rf /var/cache/apk/*

RUN gem install bundler -v 1.16.2 --no-ri --no-rdoc
