#!/bin/bash

# 安装一些系统工具以及Docker
yum install -y yum-utils device-mapper-persistent-data lvm2
yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
yum install -y docker-ce docker-ce-cli containerd.io
# 启动docker程序
systemctl start docker
# 系统自启动
systemctl enable docker

# 我们通过vagrant ssh进入虚拟机环境，默认是vagrant用户，如果不加这一行，每次调用docker命令都需要加sudo，偷懒~
usermod -aG docker vagrant