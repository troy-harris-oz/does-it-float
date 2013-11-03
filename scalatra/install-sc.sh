#!/usr/bin/env bash
# Install doc - http://scalatra.org/getting-started/installation.html

source ./app.config

curl https://raw.github.com/n8han/conscript/master/setup.sh | sh
PATH=$PATH:~/bin
export PATH
source ~/.bashrc
cs n8han/giter8
g8 scalatra/scalatra-sbt --organization=$ORG --package=$PACKAGE --name=$NAME --servlet_name=$SERVLET --scala_version=$SCALA_VERSION
cd scalatra-app
chmod u+x sbt
./sbt compile
