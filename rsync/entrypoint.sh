#!/bin/sh

exec /usr/bin/rsync --no-detach --daemon --verbose --config /etc/rsync.conf
