#!/bin/bash
docker compose -f docker/docker-compose.yml down --remove-orphans --rmi all
