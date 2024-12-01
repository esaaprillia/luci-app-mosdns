include $(TOPDIR)/rules.mk

PKG_NAME:=szip
PKG_VERSION:=2.1.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://support.hdfgroup.org/ftp/lib-external/szip/$(PKG_VERSION)/src/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=lib.licenses.unfree
PKG_LICENSE_FILES:=COPYING

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/szip
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Compression library
	DEPENDS:=
	URL:=https://www.hdfgroup.org/doc_resource/SZIP/
endef

define Package/szip/description
	Compression library that can be used with the hdf5 library
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/*.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/cmake \
	  $(1)/usr/lib/
endef

define Package/szip/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,szip))
