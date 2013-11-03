#!/usr/bin/env bash
# Install doc - http://scalatra.org/getting-started/installation.html

curl https://raw.github.com/n8han/conscript/master/setup.sh | sh
PATH=$PATH:~/bin
export PATH
source ~/.bashrc

cs n8han/giter8
g8 scalatra/scalatra-sbt --organization=com.toldknow --name=scalatra-app --servlet_name=ScalatraServlet --scala_version=2.9.2 


