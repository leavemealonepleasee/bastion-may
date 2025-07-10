#!/bin/bash

sudo yum instal httpd -y
sudo systemctl start httpd
sudo systemctl enable httpd