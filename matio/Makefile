include $(TOPDIR)/rules.mk

PKG_NAME:=matio
PKG_VERSION:=1.5.28
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/tbeu/matio/releases/download/v$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/matio
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=MATLAB MAT File I/O Library
	DEPENDS:=+hdf5 +zlib
	URL:=https://matio.sourceforge.io/
endef

define Package/matio/description
	Matio is an open-source C library for reading and writing binary MATLAB MAT files. This library is designed for use by programs/libraries that do not have access or do not want to rely on MATLAB's shared libraries.
endef

CONFIGURE_ARGS += \
	--enable-shared \
	--with-hdf5

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/*.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{pkgconfig,*.so*} \
	  $(1)/usr/lib/
endef

define Package/matio/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/matdump \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,matio))
