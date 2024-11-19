include $(TOPDIR)/rules.mk

PKG_NAME:=python-sortedcontainers
PKG_VERSION:=2.4.0
PKG_RELEASE:=1

PYPI_NAME:=sortedcontainers
PKG_HASH:=25caa5a06cc30b6b83d11423433f65d1f9d76c4c6a0c90e3379eaa43b9bfdb88

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-sortedcontainers
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Sorted Containers -- Sorted List, Sorted Dict, Sorted Set
  URL:=https://grantjenks.com/docs/sortedcontainers/
  DEPENDS:=+python3
endef

define Package/python3-sortedcontainers/description
Sorted Containers is an Apache2 licensed sorted collections library, written in pure-Python, and fast as C-extensions.
endef

$(eval $(call Py3Package,python3-sortedcontainers))
$(eval $(call BuildPackage,python3-sortedcontainers))
$(eval $(call BuildPackage,python3-sortedcontainers-src))
$(eval $(call HostBuild))
