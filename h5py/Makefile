include $(TOPDIR)/rules.mk

PKG_NAME:=h5py
PKG_VERSION:=3.12.1
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/h5py/h5py/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-cython/host python-setuptools-scm/host python-pkgconfig/host numpy/host
PKG_BUILD_DEPENDS:=python-cython/host python-setuptools-scm/host python-pkgconfig/host numpy/host

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

export CFLAGS="$(TARGET_CFLAGS) -I$(STAGING_DIR)/usr/include"
export LDFLAGS="$(TARGET_LDFLAGS) -L$(STAGING_DIR)/usr/lib"
export H5PY_SYSTEM_LZF=1
export H5PY_SETUP_REQUIRES=0
export HDF5_DIR="$(STAGING_DIR)/usr"
export HDF5_VERSION=1.14.5
export LD_LIBRARY_PATH=$(STAGING_DIR)/usr/lib

PYTHON3_PKG_SETUP_VARS:= \
	HDF5_DIR=$(STAGING_DIR)/usr \
	HDF5_INCLUDEDIR=$(STAGING_DIR)/usr/include \
	HDF5_LIBDIR=$(STAGING_DIR)/usr/lib \
	H5PY_SETUP_REQUIRES=0

define Package/h5py
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Read and write HDF5 files from Python
  URL:=http://www.h5py.org/
  DEPENDS:=+python3 +python3-numpy +hdf5
endef

define Package/h5py/description
  The h5py package provides both a high- and low-level interface to the HDF5 library from Python.
  The low-level interface is intended to be a complete wrapping of the HDF5 API, while the high-level component supports access to HDF5 files, datasets and groups using established Python and NumPy concepts.
endef

PYTHON3_PKG_WHEEL_NAME:=h5py
PYTHON3_PKG_WHEEL_VERSION:=3.12.1

$(eval $(call Py3Package,h5py))
$(eval $(call BuildPackage,h5py))
$(eval $(call BuildPackage,h5py-src))
$(eval $(call HostBuild))
