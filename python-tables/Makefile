include $(TOPDIR)/rules.mk

PKG_NAME:=python-tables
PKG_VERSION:=3.10.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=tables
PKG_HASH:=4aa07ac734b9c037baeaf44aec64ec902ad247f57811b59f30c4e31d31f126cf

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-py-cpuinfo/host python-typing-extensions/host python-cython/host python-blosc2/host numpy/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-py-cpuinfo/host python-typing-extensions/host python-cython/host python-blosc2/host numpy/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

export HDF5_DIR="$(STAGING_DIR)/usr"

PYTHON3_PKG_SETUP_VARS:= \
	HDF5_DIR="$(STAGING_DIR)/usr"

define Package/python3-tables
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Hierarchical datasets for Python
  URL:=http://www.pytables.org/
  DEPENDS:=+python3 +c-blosc2 +libbz2 +hdf5 +liblzo +python3-numexpr +python3-numpy +python3-packaging +python3-py-cpuinfo +python3-typing-extensions
endef

define Package/python3-tables/description
PyTables is a package for managing hierarchical datasets and designed to efficiently cope with extremely large amounts of data.
PyTables is built on top of the HDF5 library and the NumPy package and features an object-oriented interface that, combined with C-code generated from Cython sources, makes of it a fast, yet extremely easy to use tool for interactively save and retrieve large amounts of data.
endef

PYTHON3_PKG_BUILD_CONFIG_SETTINGS += \
	--build-option=build_ext \
	--build-option=--hdf5="$(STAGING_DIR)/usr"

$(eval $(call Py3Package,python3-tables))
$(eval $(call BuildPackage,python3-tables))
$(eval $(call BuildPackage,python3-tables-src))
$(eval $(call HostBuild))
