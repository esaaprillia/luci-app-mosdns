include $(TOPDIR)/rules.mk

PKG_NAME:=libnl
PKG_VERSION:=3.10.0
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/thom311/libnl/releases/download/libnl3_10_0/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=LGPL-2.1
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/libnl
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Netlink Library Suite
	DEPENDS:=
	URL:=https://github.com/thom311/libnl/
endef

define Package/libnl/description
	Library for applications dealing with netlink sockets
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/libnl3 \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*,libnl} \
	  $(1)/usr/lib/
endef

define Package/libnl/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{*.so*,libnl} \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libnl))
