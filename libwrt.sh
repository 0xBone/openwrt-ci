echo "lib wrt"

rm -rf package/emortal/luci-app-athena-led
rm -rf feeds/luci/applications/luci-app-mosdns
rm -rf feeds/packages/net/mosdns


git clone --depth=1 https://github.com/kongfl888/luci-app-adguardhome package/luci-app-adguardhome
git clone --depth=1 https://github.com/sbwml/luci-app-mosdns package/luci-app-mosdns
git clone --depth=1 https://github.com/NONGFAH/luci-app-athena-led package/luci-app-athena-led

chmod +x package/luci-app-athena-led/root/etc/init.d/athena_led package/luci-app-athena-led/root/usr/sbin/athena-led

./scripts/feeds update -a
./scripts/feeds install -a
