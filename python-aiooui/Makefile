include $(TOPDIR)/rules.mk

PKG_NAME:=python-aiooui
PKG_VERSION:=0.1.7
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=aiooui
PKG_HASH:=b390c9e602de1faecf3c1f0b98270a95e2d00a4da208a62d507a9635ab8a5d05

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-aiooui
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Async OUI lookups
  URL:=https://github.com/bluetooth-devices/aiooui
  DEPENDS:=+python3
endef

define Package/python3-aiooui/description
Async OUI lookups
endef

$(eval $(call Py3Package,python3-aiooui))
$(eval $(call BuildPackage,python3-aiooui))
$(eval $(call BuildPackage,python3-aiooui-src))
$(eval $(call HostBuild))
