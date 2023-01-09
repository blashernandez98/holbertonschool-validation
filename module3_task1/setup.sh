#!/bin/bash

apt-get update
apt-get install -y wget
wget https://github.com/gohugoio/hugo/releases/download/v0.85.0/hugo_0.85.0_Linux-64bit.deb
dpkg -i hugo_0.85.0_Linux-64bit.deb