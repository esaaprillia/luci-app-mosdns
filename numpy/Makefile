#
# Copyright (C) 2019 Jakub Piotr Cłapa <jpc@loee.pl>
# Copyright (C) 2020 Alexandru Ardelean <ardeleanalex@gmail.com>
#

include $(TOPDIR)/rules.mk

PKG_NAME:=numpy
PKG_VERSION:=2.1.3
PKG_RELEASE:=1

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=aa08e04e08aaf974d4458def539dece0d28146d866a39da5639596f4921fd761

PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt
PKG_CPE_ID:=cpe:/a:numpy:numpy

PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host meson-python/host

MESON_VARS := \
        BLAS_INCLUDEDIR=$(STAGING_DIR)/usr/include \
        BLAS_LIBDIR=$(STAGING_DIR)/usr/lib \
        BLAS_PCFILEDIR=$(STAGING_DIR)/usr/lib/pkgconfig

PYTHON3_PKG_BUILD_VARS := \
        BLAS_INCLUDEDIR=$(STAGING_DIR)/usr/include \
        BLAS_LIBDIR=$(STAGING_DIR)/usr/lib \
        BLAS_PCFILEDIR=$(STAGING_DIR)/usr/lib/pkgconfig

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/mosdns/meson/meson.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-numpy
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The fundamental package for scientific computing with Python
  URL:=https://www.numpy.org/
  DEPENDS:=@!SOFT_FLOAT +INSTALL_GFORTRAN:libgfortran +python3 +libstdcpp +openblas
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(CP) ./files/site.cfg $(PKG_BUILD_DIR)/
endef

MESON_VARS += \
        BLAS_INCLUDEDIR=$(STAGING_DIR)/usr/include \
        BLAS_LIBDIR=$(STAGING_DIR)/usr/lib \
        BLAS_PCFILEDIR=$(STAGING_DIR)/usr/lib/pkgconfig

PYTHON3_PKG_BUILD_VARS += \
        BLAS_INCLUDEDIR=$(STAGING_DIR)/usr/include \
        BLAS_LIBDIR=$(STAGING_DIR)/usr/lib \
        BLAS_PCFILEDIR=$(STAGING_DIR)/usr/lib/pkgconfig

define Package/python3-numpy/description
NumPy is the fundamental package for array computing with Python.

By default, this package is built without some modules.
For some modules to be available, the INSTALL_GFORTRAN symbol needs
to be enabled in the OpenWrt core/toolchain.
endef

$(eval $(call Py3Package,python3-numpy))
$(eval $(call BuildPackage,python3-numpy))
$(eval $(call BuildPackage,python3-numpy-src))
