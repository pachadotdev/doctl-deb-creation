#!/bin/bash

if [ ! -f doctl-1.68.0-linux-amd64.tar.gz ]; then
	wget https://github.com/digitalocean/doctl/releases/download/v1.68.0/doctl-1.68.0-linux-amd64.tar.gz
fi

if [ ! -d doctl-1.68.0-linux-amd64 ]; then
	echo "Packaging doctl"
	tar -zxvf doctl-1.68.0-linux-amd64.tar.gz
	rm doctl-1.68.0-linux-amd64.deb
	mkdir doctl-1.68.0-linux-amd64
	rsync -av DEBIAN/ doctl-1.68.0-linux-amd64/DEBIAN/
	mkdir -p doctl-1.68.0-linux-amd64/usr/local/bin/
	mv doctl doctl-1.68.0-linux-amd64/usr/local/bin/doctl
	chmod -R 0755 doctl-1.68.0-linux-amd64
	dpkg-deb --build doctl-1.68.0-linux-amd64
	rm -rf doctl-1.68.0-linux-amd64
fi

