# kgcf / kingcraft

## Media streamer with podman-compose

* /appdata is on SSD
* /data is on an external USB HD

## `podman-compose` on Debian 12 Bookworm

The `podman-compose` version in Debian 12 (Bookworm) is outdated.
The __vpn__ (`network_mode`) does not work in the current version of __Debian Bookworm__.


```shell
$ sudo apt install python3-venv
$ python3 -m venv .venv
$ source .venv/bin/activate
$ pip3 install podman-compose
```

## Jellyfin CPU 100%

I noticed `jellyfin` used 100% CPU during transcoding.
By adding the `podman` user to the group `render` the renderer could
use the hardware acceleration.

```shell
$ sudo usermod -aG render ${USER}
```
