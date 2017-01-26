#!/usr/bin/env bash

aws ec2 describe-spot-price-history --instance-types p2.xlarge \
	--product-description Linux/UNIX --page-size 2 --max-items 5
