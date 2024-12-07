include $(TOPDIR)/rules.mk

PKG_NAME:=python-h5py
PKG_VERSION:=2.10.0
PKG_RELEASE:=1

PYPI_NAME:=h5py
PKG_HASH:=84412798925dc870ffd7107f045d7659e60f5d46d1c70c700375248bf6bf512d

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

define Build/Prepare
	$(call Build/Prepare/Default)
	$(INSTALL_CONF) files/hdf5.pc $(STAGING_DIR)/usr/lib/pkgconfig/
	$(INSTALL_CONF) files/hdf5_hl.pc $(STAGING_DIR)/usr/lib/pkgconfig/
endef

$(eval $(call Py3Package,python3-h5py))
$(eval $(call BuildPackage,python3-h5py))
$(eval $(call BuildPackage,python3-h5py-src))
$(eval $(call HostBuild))
