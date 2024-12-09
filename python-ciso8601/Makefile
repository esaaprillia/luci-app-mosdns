include $(TOPDIR)/rules.mk

PKG_NAME:=python-ciso8601
PKG_VERSION:=2.3.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=ciso8601
PKG_HASH:=3212c7ffe5d8080270548b5f2692ffd2039683b6628a8d2ad456122cc5793c4c

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-cython/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-ciso8601
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Fast ISO8601 date time parser for Python written in C
  URL:=https://github.com/closeio/ciso8601
  DEPENDS:=+python3
endef

define Package/python3-ciso8601/description
ciso8601 converts ISO 8601 or RFC 3339 date time strings into Python datetime objects.
endef

$(eval $(call Py3Package,python3-ciso8601))
$(eval $(call BuildPackage,python3-ciso8601))
$(eval $(call BuildPackage,python3-ciso8601-src))
$(eval $(call HostBuild))
