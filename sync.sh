#/usr/bin/env bash

IP1=$1
export IP=$IP1
rsync -avz /Users/krishna/MOOC/AWS/P2/config \
	-e "ssh -i ../krishna_key.pem" \
	ubuntu@$IP:/home/ubuntu/
