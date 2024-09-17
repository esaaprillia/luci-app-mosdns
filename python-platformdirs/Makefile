include $(TOPDIR)/rules.mk

PKG_NAME:=python-platformdirs
PKG_VERSION:=4.3.3
PKG_RELEASE:=1

PYPI_NAME:=platformdirs
PKG_HASH:=d4e0b7d8ec176b341fb03cb11ca12d0276faa8c485f9cd218f613840463fc2c0

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host
PKG_BUILD_DEPENDS:=python-hatchling/host python-hatch-vcs/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-platformdirs
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A small Python module for determining appropriate platform-specific dirs, e.g. a "user data dir".
  URL:=https://platformdirs.readthedocs.io/
  DEPENDS:=+python3
endef

define Package/python3-platformdirs/description
  A small C++ header library which makes it easier to write Python extension modules.
  The primary feature is a PyObject smart pointer which automatically handles reference counting and provides convenience methods for performing common object operations.
endef

$(eval $(call Py3Package,python3-platformdirs))
$(eval $(call BuildPackage,python3-platformdirs))
$(eval $(call BuildPackage,python3-platformdirs-src))
$(eval $(call HostBuild))
