include $(TOPDIR)/rules.mk

PKG_NAME:=luci-proto-DUY-WWAN
PKG_VERSION:=1.0
PKG_RELEASE:=1

PKG_LICENSE:=GPL-2.0
PKG_MAINTAINER:=Doan Duy <doanbangduy86@gmail.com>

include ../../luci.mk

define Package/luci-proto-DUY-WWAN
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=Protocols
  TITLE:=DUY-WWAN Protocol for 4G/5G
  DEPENDS:=+wwan +kmod-usb-net +chat # Based on chat script
endef

define Package/luci-proto-DUY-WWAN/description
  LuCI support for DUY-WWAN protocol.
endef

define Build/Compile
endef

define Package/luci-proto-DUY-WWAN/install
  $(INSTALL_DIR) $(1)/usr/lib/lua/luci/model/network
  $(INSTALL_DATA) ./files/usr/lib/lua/luci/model/network/proto_DUY_WWAN.lua $(1)/usr/lib/lua/luci/model/network/
  $(INSTALL_DIR) $(1)/etc/chatscripts
  $(INSTALL_DATA) ./files/etc/chatscripts/DUY-WWAN.chat $(1)/etc/chatscripts/
endef

$(eval $(call BuildPackage,luci-proto-DUY-WWAN))
