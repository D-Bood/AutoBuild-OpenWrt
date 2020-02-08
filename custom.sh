#/bin/bash

cd /tmp
pwd
wget https://apollo.open-resource.org/downloads/luci-theme-darkmatter_0.2-beta-2_all.ipk
opkg install luci-theme-darkmatter_0.2-beta-2_all.ipk --force-reinstall

cp /www/luci-static/material/fonts/font.woff /www/luci-static/darkmatter/fonts/DIN.woff

sed -i 's/background-color: #fff;/background-color: #2f2e2a;/g' /usr/lib/lua/luci/view/passwall/global/status.htm
