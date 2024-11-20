include $(TOPDIR)/rules.mk

PKG_NAME:=python-parver
PKG_VERSION:=0.5
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=parver
PKG_HASH:=b9fde1e6bb9ce9f07e08e9c4bea8d8825c5e78e18a0052d02e02bf9517eb4777

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-parver
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Parse and manipulate version numbers.
  URL:=https://github.com/RazerM/parver
  DEPENDS:=+python3 +python3-arpeggio +python3-attrs
endef

define Package/python3-parver/description
  parver allows parsing and manipulation of PEP 440 version numbers.
endef

$(eval $(call Py3Package,python3-parver))
$(eval $(call BuildPackage,python3-parver))
$(eval $(call BuildPackage,python3-parver-src))
$(eval $(call HostBuild))
