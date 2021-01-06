#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: eSirPlayground
# Youtube Channel: https://goo.gl/fvkdwm 
#=================================================
#1. Modify default IP
#sed -i 's/192.168.1.1/192.168..1/g' openwrt/package/base-files/files/bin/config_generate
cd openwrt
echo "CONFIG_PACKAGE_appfilter=y" >>.config
echo "CONFIG_PACKAGE_kmod-oaf=y" >>.config
echo "CONFIG_PACKAGE_luci-i18n-oaf-zh-cn=y" >>.config
echo "CONFIG_PACKAGE_luci-app-oaf=y" >>.config
cd package
git clone https://github.com/destan19/OpenAppFilter.git
echo "clone appfilter....ok"
cd ../../

