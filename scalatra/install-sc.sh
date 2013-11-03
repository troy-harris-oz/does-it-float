#!/usr/bin/env bash
# Install doc - http://scalatra.org/getting-started/installation.html

SCALA_VERSION=2.10.2
ORG=com.toldknow
NAME=scalatra-app
PACKAGE=com.toldknow.app
SERVLET=AppServlet

curl https://raw.github.com/n8han/conscript/master/setup.sh | sh
PATH=$PATH:~/bin
export PATH
source ~/.bashrc
cs n8han/giter8
g8 scalatra/scalatra-sbt --organization=$ORG --name=$NAME --servlet_name=$SERVLET --scala_version=$SCALA_VERSION
cd scalatra-app
chmod u+x sbt
./sbt compile
