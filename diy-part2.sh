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
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# rm -rf feeds/packages/luci/themes/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
sed -i '0,/bootstrap/{s/bootstrap/argon/}' feeds/luci/modules/luci-base/root/etc/config/luci
sed -i '4s/^/#/' feeds/luci/themes/luci-theme-bootstrap/root/etc/uci-defaults/30_luci-theme-bootstrap
sed -i '4s/^/#/' feeds/luci/themes/luci-theme-material/root/etc/uci-defaults/30_luci-theme-material
sed -i '4s/^/#/' feeds/luci/themes/luci-theme-netgear/root/etc/uci-defaults/30_luci-theme-netgear
git clone https://github.com/jerrykuku/luci-app-argon-config.git package/lean/luci-app-argon-config
