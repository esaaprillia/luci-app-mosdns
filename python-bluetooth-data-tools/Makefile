include $(TOPDIR)/rules.mk

PKG_NAME:=python-bluetooth-data-tools
PKG_VERSION:=1.20.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=bluetooth_data_tools
PKG_HASH:=1c11aca1a25e045e0baf1f88ebb0de53d2844e357d6017dc6c143c20e20b3436

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-bluetooth-data-tools
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tools for converting bluetooth data and packets
  URL:=https://github.com/Bluetooth-Devices/bluetooth-data-tools
  DEPENDS:=+python3 +python3-cryptography
endef

define Package/python3-bluetooth-data-tools/description
Tools for converting bluetooth data and packets
endef

$(eval $(call Py3Package,python3-bluetooth-data-tools))
$(eval $(call BuildPackage,python3-bluetooth-data-tools))
$(eval $(call BuildPackage,python3-bluetooth-data-tools-src))
$(eval $(call HostBuild))
