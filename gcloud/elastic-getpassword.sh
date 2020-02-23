#!/bin/bash

# user elastic
# for elasticsearch name of Elasticsearch cluster
kubectl get secret elasticsearch-es-elastic-user -o=jsonpath='{.data.elastic}' | base64 --decode); echo