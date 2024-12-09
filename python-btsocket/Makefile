include $(TOPDIR)/rules.mk

PKG_NAME:=python-btsocket
PKG_VERSION:=0.3.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=btsocket
PKG_HASH:=7ea495de0ff883f0d9f8eea59c72ca7fed492994df668fe476b84d814a147a0d

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-btsocket
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python library for BlueZ Bluetooth Management API
  URL:=https://github.com/ukBaz/python-btsocket
  DEPENDS:=+python3
endef

define Package/python3-btsocket/description
A Python library to interact with Bluez Bluetooth Management API on Linux. At this time it should be seen as a very early stage proof of concept. If you are new to Bluetooth this might not be the best library to start with
endef

$(eval $(call Py3Package,python3-btsocket))
$(eval $(call BuildPackage,python3-btsocket))
$(eval $(call BuildPackage,python3-btsocket-src))
$(eval $(call HostBuild))
