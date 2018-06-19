#!/usr/bin/env bash

docker-compose up -d --remove-orphans

read -p "Press ENTER to Open all apps in browser or Press CTRL+C to exit."
open "http://localhost:3000" #grafana
open "http://localhost:9090/targets" #prometheus
open "http://localhost:9091" #push gateway
open "http://localhost:9093" #alert manager
open "http://localhost:9095" #cadvisort
open "http://localhost:8025" #mailhog


read -p "Press ENTER to watch logs or Press CTRL+C to exit."
docker-compose logs -f

read -p "Press ENTER to destroy all containers or Press CTRL+C to exit."
docker-compose down