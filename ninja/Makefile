include $(TOPDIR)/rules.mk

PKG_NAME:=ninja
PKG_VERSION:=1.12.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ninja-build/ninja/archive/v$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/ninja
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=a small build system with a focus on speed
	DEPENDS:=
	URL:=https://ninja-build.org/
endef

define Package/ninja/description
	Ninja is a small build system with a focus on speed. https://ninja-build.org/
endef

define Package/ninja/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/share

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/android-tools \
	  $(1)/usr/share/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/bash-completion \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,ninja))
$(eval $(call HostBuild))

