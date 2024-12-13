include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiozoneinfo
PKG_VERSION:=0.2.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=aiozoneinfo
PKG_HASH:=457e2c665a2c7e093119efb87cc5e0da29e6f59aac504a544bec822c5be1cb6b

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-aiozoneinfo
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tools to fetch zoneinfo with asyncio
  URL:=https://github.com/bluetooth-devices/aiozoneinfo
  DEPENDS:=+python3 +python3-tzdata
endef

define Package/python3-aiozoneinfo/description
Tools to fetch zoneinfo with asyncio
endef

$(eval $(call Py3Package,python3-aiozoneinfo))
$(eval $(call BuildPackage,python3-aiozoneinfo))
$(eval $(call BuildPackage,python3-aiozoneinfo-src))
$(eval $(call HostBuild))
