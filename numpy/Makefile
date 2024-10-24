# Copyright (C) 2019 Lucian Cristian <lucian.cristian@gmail.com>
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.

include $(TOPDIR)/rules.mk

PKG_NAME:=libpthread-stubs
PKG_VERSION:=0.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://www.x.org/releases/individual/xcb/
PKG_HASH:=skip

PKG_INSTALL:=1

PKG_BUILD_PARALLEL:=1
PKG_FIXUP:=autoreconf

include $(INCLUDE_DIR)/package.mk

define Package/libpthread-stubs
  SECTION:=libs
  CATEGORY:=Libraries
  DEPENDS:=
  TITLE:=Pthread functions stubs for platforms missing them
  URL:=https://www.x.org
endef

#### TARGET_CFLAGS += -DHAVE_PTHREAD_EXIT=1

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
  --prefix=/usr \


define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/pkgconfig \
	  $(1)/usr/lib/
endef

#define Package/libpthread-stubs/install
#	$(INSTALL_DIR) \
#	  $(1)/usr/lib
#
#	$(CP) \
#	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
#	  $(1)/usr/lib/
#endef

$(eval $(call BuildPackage,libpthread-stubs))
