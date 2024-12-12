include $(TOPDIR)/rules.mk

PKG_NAME:=python-propcache
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=propcache
PKG_HASH:=3f77ce728b19cb537714499928fe800c3dda29e8d9428778fc7c186da4c09a64

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-propcache
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Accelerated property cache
  URL:=https://propcache.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-propcache/description
The module provides a fast implementation of cached properties for Python 3.9+.
endef

$(eval $(call Py3Package,python3-propcache))
$(eval $(call BuildPackage,python3-propcache))
$(eval $(call BuildPackage,python3-propcache-src))
$(eval $(call HostBuild))
