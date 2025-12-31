#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-argon/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# Modify match up to Cudy tr3000 ubi 112M
# sed -i 's/reg = <0x5c0000 0x4000000>;/reg = <0x5c0000 0x7000000>;/g' target/linux/mediatek/dts/mt7981b-cudy-tr3000-v1.dts
# Modify match up to Cudy tr3000 ubi 122M
sed -i 's/reg = <0x5c0000 0x4000000>;/reg = <0x5c0000 0x7a40000>;/g' target/linux/mediatek/dts/mt7981b-cudy-tr3000-v1.dts
