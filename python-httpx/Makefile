include $(TOPDIR)/rules.mk

PKG_NAME:=python-httpx
PKG_VERSION:=0.28.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.md

PYPI_NAME:=httpx
PKG_HASH:=75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-httpx
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=The next generation HTTP client.
  URL:=https://www.python-httpx.org/
  DEPENDS:=+python3
endef

define Package/python3-httpx/description
HTTPX is a fully featured HTTP client library for Python 3. It includes an integrated command line client, has support for both HTTP/1.1 and HTTP/2, and provides both sync and async APIs.
endef

$(eval $(call Py3Package,python3-httpx))
$(eval $(call BuildPackage,python3-httpx))
$(eval $(call BuildPackage,python3-httpx-src))
$(eval $(call HostBuild))
