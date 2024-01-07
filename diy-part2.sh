#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#

# Modify default IP
sed -i 's/192.168.1.1/192.168.0.1/g' package/base-files/files/bin/config_generate

mv $GITHUB_WORKSPACE/target target

wget https://downloads.openwrt.org/releases/23.05.2/targets/x86/64/llvm-bpf-15.0.7.Linux-x86_64.tar.xz
tar -xvaf llvm-bpf-15.0.7.Linux-x86_64.tar.xz
