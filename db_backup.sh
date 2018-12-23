#!/bin/bash -e

docker-compose exec wiki-db mongodump --out /backup
