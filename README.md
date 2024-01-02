# kgcf / kingcraft - media streamer with podman-compose

## Note: Debian 12 Bookworm

The podman-compose version in Debian 12 (Bookworm) is dated.
The __vpn__ does not work in the current version of __Debian Bookworm__.

```shell
$ sudo apt install python3-venv
$ python3 -m venv .venv
$ source .venv/bin/activate
$ pip3 install podman-compose
```

Group 'render' user podman.