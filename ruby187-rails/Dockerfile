FROM minimal/ruby187

ENV RUBY_VERSION "1.8.7-p375"

ENV GEMBUILD_PACKAGES \
    build-base \
    gawk \
    git \
    libcurl \
    curl-dev \
    automake \
    bison \
    libtool \
#    sqlite-dev \
#    libgmp-dev \
    libxml2-dev \
    libxslt-dev \
    mysql-dev \
    imagemagick6-dev
#    libgraphicsmagick-q16-3 \
#    libmagick++-dev \
#    libmagickwand-6.q16-dev


RUN apk update && \
    apk upgrade && \
    apk add $GEMBUILD_PACKAGES && \
    git clone https://github.com/sstephenson/ruby-build.git /tmp/ruby-build && \
    cd /tmp/ruby-build && ./install.sh && cd - && rm -rf /tmp/ruby-build && \
    apk del $GEMBUILD_PACKAGES && \
    rm -rf /var/cache/apk/*


ENV APP_DIR /srv/app

WORKDIR $APP_DIR

#RUN	apk update && \
#     	apk upgrade && \
#     	apk add $RUBYBUILD_PACKAGES $RUBYLIB_PACKAGES $EXTRA_PACKAGES && \
#	pwd && \
#	gem install rake -v 0.9.0 --no-ri --no-rdoc && \
#	gem install rails -v 2.3.15 --no-ri --no-rdoc

# ENV RUBYBUILD_PACKAGES \
#   build-base \
#   autoconf \
#   git \
#   subversion \
#   bison \
#   zlib-dev \
#   openssl-dev \
#   yaml-dev \
#   readline-dev \
#   ncurses-dev \
#   libffi-dev \
#   gdbm-dev

# ENV RUBYLIB_PACKAGES \
#   zlib \
#   openssl \
#   yaml \
#   readline \
#   ncurses \
#   libffi \
#   gdbm

# ENV EXTRA_PACKAGES \
#   ca-certificates \
#   bash \
#   curl

# RUN apk update && \
#     apk upgrade && \
#     apk add $RUBYBUILD_PACKAGES $RUBYLIB_PACKAGES $EXTRA_PACKAGES && \
#     git clone https://github.com/sstephenson/ruby-build.git /tmp/ruby-build && \
#     cd /tmp/ruby-build && ./install.sh && cd - && rm -rf /tmp/ruby-build && \
#     ruby-build -v $RUBY_VERSION /usr/local && \
#     apk del $RUBYBUILD_PACKAGES && \
#     rm -rf /var/cache/apk/*

# RUN gem install bundler
