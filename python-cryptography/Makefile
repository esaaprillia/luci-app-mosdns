#
# Copyright (C) 2019 Jakub Piotr Cłapa <jpc@loee.pl>
# Copyright (C) 2020 Alexandru Ardelean <ardeleanalex@gmail.com>
#

include $(TOPDIR)/rules.mk

PKG_NAME:=numpy
PKG_VERSION:=2.1.0
PKG_RELEASE:=1

PYPI_NAME:=$(PKG_NAME)
PKG_HASH:=7dc90da0081f7e1da49ec4e398ede6a8e9cc4f5ebe5f9e06b443ed889ee9aaa2

PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>

PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt
PKG_CPE_ID:=cpe:/a:numpy:numpy

PKG_BUILD_DEPENDS:=python-cython/host pyproject-metadata/host meson-python/host

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

ifeq ($(ARCH),x86_64)
# FIXME: temporary fix for x86_64 with GCC 13 + musl;
#        numpy does not detect this compiler extension, so we just enable it
TARGET_CFLAGS += -mavx512f
endif

define Build/Prepare/numpy-sitecfg
	echo                                             >> $(PKG_BUILD_DIR)/site.cfg
	echo "[openblas]"                                >> $(PKG_BUILD_DIR)/site.cfg
	echo "libraries = openblas"                      >> $(PKG_BUILD_DIR)/site.cfg
	echo "library_dirs = $(STAGING_DIR)/usr/lib"     >> $(PKG_BUILD_DIR)/site.cfg
	echo "include_dirs = $(STAGING_DIR)/usr/include" >> $(PKG_BUILD_DIR)/site.cfg
endef

define Build/Prepare
	$(call Build/Prepare/Default)
	$(call Build/Prepare/numpy-sitecfg)
endef

define Package/python3-numpy/description
NumPy is the fundamental package for array computing with Python.

By default, this package is built without some modules.
For some modules to be available, the INSTALL_GFORTRAN symbol needs
to be enabled in the OpenWrt core/toolchain.
endef

$(eval $(call Py3Package,python3-numpy))
$(eval $(call BuildPackage,python3-numpy))
$(eval $(call BuildPackage,python3-numpy-src))
