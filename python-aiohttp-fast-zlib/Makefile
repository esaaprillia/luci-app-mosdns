include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiohttp-fast-zlib
PKG_VERSION:=0.2.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=aiohttp_fast_zlib
PKG_HASH:=e2e6c27a7ffc825cdd50d6f80e302ebbc025b43c876c00f01dc2ae759905dce8

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-aiohttp-fast-zlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Use the fastest installed zlib compatible library with aiohttp
  URL:=https://github.com/bdraco/aiohttp-fast-zlib
  DEPENDS:=+python3 +python3-aiohttp +python3-isal +python3-zlib-ng
endef

define Package/python3-aiohttp-fast-zlib/description
Use the fastest installed zlib compatible library with aiohttp

zlib is be a bottleneck for aiohttp, especially for websocket connections. aiohttp-fast-zlib replaces usage of zlib in aiohttp with isal or zlib-ng which is a drop-in faster replacement in most cases. Be sure to read the isal documentation and the zlib-ng documentation.
endef

$(eval $(call Py3Package,python3-aiohttp-fast-zlib))
$(eval $(call BuildPackage,python3-aiohttp-fast-zlib))
$(eval $(call BuildPackage,python3-aiohttp-fast-zlib-src))
$(eval $(call HostBuild))
