include $(TOPDIR)/rules.mk

PKG_NAME:=iml
PKG_VERSION:=1.0.5
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.bz2
PKG_SOURCE_URL:=https://www.cs.uwaterloo.ca/~astorjoh/
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0-or-later
PKG_LICENSE_FILES:=COPYING

PKG_FIXUP:=autoreconf
PKG_BUILD_PARALLEL:=1
PKG_INSTALL:=1

include $(INCLUDE_DIR)/package.mk

define Package/iml
	SECTION:=libs
	CATEGORY:=Libraries
	TITLE:=Library for solving linear equations over the integers
	DEPENDS:=+INSTALL_GFORTRAN:libgfortran +libgmp +openblas
	URL:=https://cs.uwaterloo.ca/~astorjoh/iml.html
endef

define Package/iml/description
	IML is a free library of C source code which implements algorithms for computing exact solutions to dense systems of linear equations over the integers.
	IML is designed to be compiled with a CBLAS library (e.g., ATLAS/BLAS) and the GMP bignum library.
	Written in portable C, IML can be used on both 32-bit and 64-bit machines. It can be called from C++.
endef

CONFIGURE_ARGS += \
	--enable-shared \
	--with-cblas=-lopenblas

define Build/InstallDev
	$(INSTALL_DIR) \
	  $(1)/usr/include \
	  $(1)/usr/lib

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/include/iml.h \
	  $(1)/usr/include/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/
endef

define Package/iml/install
	$(INSTALL_DIR) \
	  $(1)/usr/lib \
	  $(1)/usr/share
	
	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/lib/*.so* \
	  $(1)/usr/lib/

	$(CP) \
	  $(PKG_INSTALL_DIR)/usr/share/iml \
	  $(1)/usr/share/
endef

$(eval $(call BuildPackage,iml))
