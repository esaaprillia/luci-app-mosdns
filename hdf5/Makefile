include $(TOPDIR)/rules.mk

PKG_NAME:=hdf5
PKG_VERSION:=1.14.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/HDFGroup/hdf5/releases/download/hdf5_$(PKG_VERSION)/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE LICENSE_LBNL_HDF5

PKG_FIXUP:=libtool

PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/hdf5
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=HDF5 is a data model, library, and file format for storing and managing data
	DEPENDS:=+libaec +zlib +libstdcpp
	URL:=https://github.com/HDFGroup/hdf5/
endef

define Package/hdf5/description
	This repository contains a high-performance library's source code and a file format specification that implements the HDF5® data model.
	The model has been adopted across many industries, and this implementation has become a de facto data management standard in science, engineering, and research communities worldwide.
endef

TARGET_LDFLAGS += -Wl,--gc-sections,--as-needed

CONFIGURE_ARGS += \
	--prefix=$(CONFIGURE_PREFIX) \
	--docdir=$(CONFIGURE_PREFIX)/share/doc/hdf5 \
	--with-default-plugindir=$(CONFIGURE_PREFIX)/lib/hdf5/plugin \
	--with-examplesdir=$(CONFIGURE_PREFIX)/share/doc/hdf5/examples \
	--disable-static \
	--disable-sharedlib-rpath \
	--enable-deprecated-symbols \
	--enable-build-mode=production \
	--enable-hl \
	--enable-cxx \
	--disable-fortran \
	--disable-java \
	--with-pic \
	--with-zlib \
	--with-szlib \
	--with-default-api-version=v110

# We can't use the default, as the default passes $(MAKE_ARGS), which
# overrides CC, CFLAGS, etc. and defeats the *_FOR_BUILD definitions
# passed in CONFIGURE_VARS
define Build/Compile
	$(MAKE) $(PKG_JOBS) -C $(PKG_BUILD_DIR)/$(MAKE_PATH)
endef

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/* \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/* \
	  $(1)/usr/lib/
endef

define Package/hdf5/install
	$(INSTALL_DIR) \
	  $(1)/usr/bin \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/bin/* \
	  $(1)/usr/bin/
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

$(eval $(call BuildPackage,hdf5))
