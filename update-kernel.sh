#!/bin/sh
echo "Updating OpenWrt source and kernel..."
cd /databuild/duy/DUY-WWAN/openwrt
git pull origin master
echo "Updating feeds..."
./scripts/feeds update -a
echo "Installing luci-proto-DUY-WWAN..."
./scripts/feeds install luci-proto-DUY-WWAN
echo "Cleaning old kernel build..."
make target/linux/clean
echo "Building new firmware with updated kernel..."
make -j$(nproc)
echo "Build completed!"
