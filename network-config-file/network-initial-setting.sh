sed -i "2i # network config" ./lede/package/lean/default-settings/files/zzz-default-settings # Set network config
sed -i "3i uci set network.lan.ipaddr='192.168.1.254'"  ./lede/package/lean/default-settings/files/zzz-default-settings # Default IP address
sed -i "4i uci set network.lan.proto='static'"  ./lede/package/lean/default-settings/files/zzz-default-settings # Static IP
sed -i "5i uci set network.lan.type='bridge'"  ./lede/package/lean/default-settings/files/zzz-default-settings  # Interface Type: Bridge
sed -i "6i uci set network.lan.ifname='eth0'"  ./lede/package/lean/default-settings/files/zzz-default-settings  # Network port: default eth0, the first interface
sed -i "7i uci set network.lan.netmask='255.255.0.0'"  ./lede/package/lean/default-settings/files/zzz-default-settings    # subnet mask
sed -i "8i uci set network.lan.gateway='192.168.1.1'"  ./lede/package/lean/default-settings/files/zzz-default-settings  # Default gateway address (main route IP)
sed -i "9i uci set network.lan.dns='192.168.1.1'"  ./lede/package/lean/default-settings/files/zzz-default-settings  # Default upstream DNS address
sed -i "10i uci commit network\n"  ./lede/package/lean/default-settings/files/zzz-default-settings
