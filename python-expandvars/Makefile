include $(TOPDIR)/rules.mk

PKG_NAME:=libfontenc
PKG_VERSION:=1.1.8
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.xz
PKG_SOURCE_URL:=https://xorg.freedesktop.org/releases/individual/lib
PKG_HASH:=7b02c3d405236e0d86806b1de9d6868fe60c313628b38350b032914aa4fd14c6

PKG_INSTALL:=1

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=util-macros xorgproto

include $(INCLUDE_DIR)/package.mk

define Package/libfontenc
	SECTION:=libs
	CATEGORY:=Libraries
	SUBMENU:=Xorg
	TITLE:=X11 font encoding library
	DEPENDS:=+zlib
	URL:=http://xorg.freedesktop.org/
endef

define Package/libfontenc/description
	libfontenc - font encoding library
endef

define Build/InstallDev
	$(INSTALL_DIR) $(1)/usr/include
	$(CP) $(PKG_INSTALL_DIR)/usr/include/X11 $(1)/usr/include/
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/pkgconfig $(1)/usr/lib/
endef

define Package/libfontenc/install
	$(INSTALL_DIR) $(1)/usr/lib
	$(CP) $(PKG_INSTALL_DIR)/usr/lib/*.so* $(1)/usr/lib/
endef

$(eval $(call BuildPackage,libfontenc))
