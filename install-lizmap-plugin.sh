#!/bin/bash

# 
# Install lizmap plugin 
# This has to be run inside the qgis server container:
#
mkdir /srv/plugins
/srv/plugins
qgis-plugin-manager init
qgis-plugin-manager update
qgis-plugin-manager install "Lizmap server"
qgis-plugin-manager install atlasprint
qgis-plugin-manager install wfsOutputExtension
