#! /usr/bin/env bash
set -e -o verbose

# Deps
yum install -y epel-release
yum clean all
yum makecache
yum install -y \
      make \
      openssl-devel \
      cmake3 \
      autotools \
      wget \
      git \
      gcc \
      gcc-c++ \
      libstdc++-static \
      sudo \
      which \
      bzip2 \
      krb5-devel \
      perl-App-cpanminus
yum clean all

ln -s /usr/bin/cmake3 /usr/bin/cmake

cpanm File::Rename \
 && rename --version