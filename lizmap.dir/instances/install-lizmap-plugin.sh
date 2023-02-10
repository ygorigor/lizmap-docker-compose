#!/bin/bash

# 
# Install lizmap plugin 
# This has to be run inside the qgis server container:
#
echo "Install QGIS Server, WfsOutputExtension and AlasPrint plugins"
qgis-plugin-manager init
qgis-plugin-manager update
qgis-plugin-manager install "Lizmap server"
qgis-plugin-manager install atlasprint
qgis-plugin-manager install wfsOutputExtension
touch /srv/projects/qgis-restart.txt
