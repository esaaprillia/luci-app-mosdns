include $(TOPDIR)/rules.mk

PKG_NAME:=kealib
PKG_VERSION:=1.5.3
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/ubarsc/kealib/releases/download/kealib-$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE.txt

CMAKE_BINARY_SUBDIR := build

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/kealib
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=KEA is an image file format that provides a full implementation of the GDAL data model (development files)
	DEPENDS:=+hdf5
	URL:=http://kealib.org/
endef

define Package/kealib/description
	KEALib provides an implementation of the GDAL data model. The format supports raster attribute tables, image pyramids, meta-data and in-built statistics while also handling very large files and compression throughout.
	Based on the HDF5 standard, it also provides a base from which other formats can be derived and is a good choice for long term data archiving. An independent software library (libkea) provides complete access to the KEA image format and a GDAL driver allowing KEA images to be used from any GDAL supported software.
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/libkea \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/{cmake,*.so*} \
	  $(1)/usr/lib/
endef

define Package/kealib/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,kealib))
