#!/bin/bash

docker login --username weclouddata --password-stdin

docker build -t weclouddata/dbt:latest .
docker push weclouddata/dbt
		