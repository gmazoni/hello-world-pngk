#!/bin/bash

docker compose -f go/docker-compose.yml down
docker compose -f go/docker-compose.yml up -d
docker compose -f python/docker-compose.yml down
docker compose -f python/docker-compose.yml up -d
docker compose -f node/docker-compose.yml down
docker compose -f node/docker-compose.yml up -d
docker compose -f kotlin/docker-compose.yml down
docker compose -f kotlin/docker-compose.yml up -d

docker compose -f loadbalancer/docker-compose.yml down
docker compose -f loadbalancer/docker-compose.yml up -d