#!/bin/bash

sleep 5 &&
echo "Install lizmap plugins" &&
docker exec map sh /srv/projects/install-lizmap-plugin.sh &&
sleep 10 &&
echo "Load LWC cache"
docker exec lizmap php lizmap/scripts/script.php lizmap~project:load 5 &&
sleep 2 &&
echo "Stop docker container"
docker stop docker_container
