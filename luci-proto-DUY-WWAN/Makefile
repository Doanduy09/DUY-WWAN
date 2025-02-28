include $(TOPDIR)/rules.mk

PKG_NAME:=luci-proto-DUY-WWAN
PKG_VERSION:=1.1  # Increased version to reflect improvements
PKG_RELEASE:=1

PKG_LICENSE:=GPL-2.0
PKG_MAINTAINER:=Doan Duy <doanbangduy86@gmail.com>

include ../../luci.mk

define Package/luci-proto-DUY-WWAN
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=Protocols
  TITLE:=DUY-WWAN Protocol for 4G/5G
  DEPENDS:=+wwan \
           +kmod-usb-core +kmod-usb2 +kmod-usb3 \
           +kmod-usb-net +kmod-usb-net-cdc-ether +kmod-usb-net-cdc-ncm \
           +kmod-usb-net-qmi-wwan +kmod-usb-net-huawei-cdc-ncm \
           +kmod-usb-net-sierrawireless +kmod-usb-net-cdc-mbim \
           +kmod-usb-serial +kmod-usb-serial-option +kmod-usb-serial-wwan \
           +kmod-mii +kmod-usb-net-rndis \
           +chat +uqmi +libmbim +modemmanager +comgt +ppp
endef

define Package/luci-proto-DUY-WWAN/description
  LuCI support for DUY-WWAN protocol with enhanced 4G/5G WWAN compatibility.
endef

define Build/Compile
endef

define Package/luci-proto-DUY-WWAN/install
  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/network
  $(INSTALL_DATA) ./files/usr/lib/lua/luci/model/network/proto_DUY_WWAN.lua $(1)/usr/lib/lua/luci/model/network/
  $(INSTALL_DIR) $(1)/etc/chatscripts
  $(INSTALL_DATA) ./files/etc/chatscripts/DUY-WWAN.chat $(1)/etc/chatscripts/
  $(INSTALL_DIR) $(1)/etc/udev/rules.d
  $(INSTALL_DATA) ./files/etc/udev/rules.d/99-duy-wwan.rules $(1)/etc/udev/rules.d/
endef

$(eval $(call BuildPackage,luci-proto-DUY-WWAN))
