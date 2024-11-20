include $(TOPDIR)/rules.mk

PKG_NAME:=python-pylsqpack
PKG_VERSION:=0.3.18
PKG_RELEASE:=1

PYPI_NAME:=pylsqpack
PKG_HASH:=45ae55e721877505f4d5ccd49591d69353f2a548a8673dfafb251d385b3c097f

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pylsqpack
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Python wrapper for the ls-qpack QPACK library
  URL:=https://github.com/aiortc/pylsqpack
  DEPENDS:=+python3
endef

define Package/python3-pylsqpack/description
pylsqpack is a wrapper around the ls-qpack library.
It provides Python Decoder and Encoder objects to read or write HTTP/3 headers compressed with QPACK.
endef

$(eval $(call Py3Package,python3-pylsqpack))
$(eval $(call BuildPackage,python3-pylsqpack))
$(eval $(call BuildPackage,python3-pylsqpack-src))
$(eval $(call HostBuild))
