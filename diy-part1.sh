#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
#echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

mv target openwrt/target
mv tools openwrt/tools
wget https://downloads.openwrt.org/releases/23.05.2/targets/x86/64/llvm-bpf-15.0.7.Linux-x86_64.tar.xz -P openwrt
tar -xvaf openwrt/llvm-bpf-15.0.7.Linux-x86_64.tar.xz