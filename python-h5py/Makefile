include $(TOPDIR)/rules.mk

PKG_NAME:=python-h5py
PKG_VERSION:=3.12.1
PKG_RELEASE:=1

PYPI_NAME:=h5py
PKG_HASH:=326d70b53d31baa61f00b8aa5f95c2fcb9621a3ee8365d770c551a13dbbcbfdf

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-cython/host python-setuptools-scm/host python-pkgconfig/host numpy/host
PKG_BUILD_DEPENDS:=python-cython/host python-setuptools-scm/host python-pkgconfig/host numpy/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

PYTHON3_PKG_SETUP_VARS:= \
	HDF5_DIR=$(STAGING_DIR)/usr \
	H5PY_SETUP_REQUIRES=0

define Package/python3-h5py
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Read and write HDF5 files from Python
  URL:=http://www.h5py.org/
  DEPENDS:=+python3 +python3-numpy +hdf5
endef

define Package/python3-h5py/description
  The h5py package provides both a high- and low-level interface to the HDF5 library from Python.
  The low-level interface is intended to be a complete wrapping of the HDF5 API, while the high-level component supports access to HDF5 files, datasets and groups using established Python and NumPy concepts.
endef

$(eval $(call Py3Package,python3-h5py))
$(eval $(call BuildPackage,python3-h5py))
$(eval $(call BuildPackage,python3-h5py-src))
$(eval $(call HostBuild))
