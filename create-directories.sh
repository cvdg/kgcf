#!/bin/bash

set -ex

# App data on SSD
sudo mkdir -pv /appdata/{gluetun,jellyfin,lidarr,prowlarr,radarr,readarr,sonarr,transmission}

# Media data on HD
sudo mkdir -pv /data/{media,torrent}/{audio,book,movie,tv}


sudo chown -Rv cees:cees /appdata /data
podman unshare chown -Rv cees:cees /appdata /data