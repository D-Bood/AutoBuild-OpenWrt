#!/bin/bash

cd /tmp
pwd
wget https://apollo.open-resource.org/downloads/luci-theme-darkmatter_0.2-beta-2_all.ipk
opkg install luci-theme-darkmatter_0.2-beta-2_all.ipk --force-reinstall

cp /www/luci-static/material/fonts/font.woff /www/luci-static/darkmatter/fonts/DIN.woff

sed -i 's/background-color: #fff;/background-color: #3f3e3a;/g' /usr/lib/lua/luci/view/passwall/global/status.htm
sed -i 's/os.date()/os.date("%Y年%m月%d日 %H:%M:%S")/g' /usr/lib/lua/luci/view/admin_status/index.htm
sed -i 's/max-width:200px;//g' /usr/lib/lua/luci/view/admin_status/index.htm
