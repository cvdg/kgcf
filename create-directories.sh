#!/bin/bash
#
# /appdata: SSD
# /data:    HDD
#

set -ex

APPDATA_DIR="/appdata"
DATA_DIR="/data"

sudo mkdir -pv ${APPDATA_DIR}/{gluetun,jellyfin,lidarr,prowlarr,radarr,readarr,sonarr,qbittorrent}

sudo mkdir -pv ${APPDATA_DIR}/homarr/{configs,icons,data}


sudo mkdir -pv ${DATA_DIR}/{media,torrent}/{audio,book,movie,tv}

sudo chown -Rv cees:cees ${APPDATA_DIR}
sudo chown -Rv cees:cees ${DATA_DIR}

