#!/bin/bash

set -ex

podman secret create openvpn_user openvpn_user.txt
podman secret create openvpn_password openvpn_password.txt
