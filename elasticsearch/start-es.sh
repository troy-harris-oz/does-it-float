#!/usr/bin/env bash

ES_VERSION=0.90.5

wget -O elasticsearch.tar.gz https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$ES_VERSION.tar.gz
tar xfv elasticsearch.tar.gz
mv elasticsearch-$ES_VERSION elasticsearch-server

./elasticsearch-server/bin/plugin --install mobz/elasticsearch-head
./elasticsearch-server/bin/elasticsearch

echo Elasticsearch now running on http://localhost:9200/_plugin/head
