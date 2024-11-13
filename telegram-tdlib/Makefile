include $(TOPDIR)/rules.mk

PKG_NAME:=telegram-tdlib
PKG_VERSION:=1.8.29
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/tdlib/td.git
PKG_SOURCE_VERSION:=af69dd4397b6dc1bf23ba0fd0bf429fcba6454f6
PKG_MIRROR_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSL-1.0 license
PKG_LICENSE_FILES:=LICENSE_1_0.txt

CMAKE_BINARY_SUBDIR := build

HOST_BUILD_DEPENDS:=gperf/host
PKG_BUILD_DEPENDS:=gperf/host telegram-tdlib/host

include $(INCLUDE_DIR)/host-build.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/telegram-tdlib
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Cross-platform library for building Telegram clients
	DEPENDS:=+libstdcpp +zlib +libopenssl
	URL:=https://github.com/tdlib/td
endef

define Package/telegram-tdlib/description
	TDLib (Telegram Database library) is a cross-platform library for building Telegram clients.
	It can be easily used from almost any programming language.
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(CP) $(HOST_BUILD_DIR)/td/generate/auto/td $(PKG_BUILD_DIR)/
	$(CP) $(HOST_BUILD_DIR)/td/generate/auto $(PKG_BUILD_DIR)/td/generate/
	$(CP) $(HOST_BUILD_DIR)/tdutils/generate/auto $(PKG_BUILD_DIR)/tdutils/generate/
endef

CMAKE_OPTIONS += \
	-DCMAKE_BUILD_TYPE=Release \
	-DCMAKE_CROSSCOMPILING=ON \
	-DBUILD_SHARED_LIBS=ON

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib \
	  $(1)/usr/tdlib/include \
	  $(1)/usr/tdlib/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/td \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,cmake,*.so*,*.a} \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/td \
	  $(1)/usr/tdlib/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,cmake,*.so*,*.a} \
	  $(1)/usr/tdlib/lib/
endef

define Package/telegram-tdlib/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call HostBuild))
$(eval $(call BuildPackage,telegram-tdlib))
