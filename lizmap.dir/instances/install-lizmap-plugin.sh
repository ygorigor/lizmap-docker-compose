#!/bin/bash

# 
# Install lizmap plugin 
# This has to be run inside the qgis server container:
#
echo "Install QGIS Server and WfsOutputExtension"
qgis-plugin-manager init
qgis-plugin-manager update
qgis-plugin-manager install "Lizmap server"
qgis-plugin-manager install wfsOutputExtension
touch /srv/projects/qgis-restart.txt
