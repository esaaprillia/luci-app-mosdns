include $(TOPDIR)/rules.mk

PKG_NAME:=python-bluetooth-adapters
PKG_VERSION:=0.20.2
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=bluetooth_adapters
PKG_HASH:=88bfba4ab8678c1bb3416851b3e6f497d4b8a368c8de1bc4e517743081ad2f55

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-bluetooth-adapters
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Tools to enumerate and find Bluetooth Adapters
  URL:=https://github.com/bluetooth-devices/bluetooth-adapters
  DEPENDS:=+python3 +python3-aiooui +python3-bleak +python3-dbus-fast +python3-uart-devices +python-usb-devices
endef

define Package/python3-bluetooth-adapters/description
Tools to enumerate and find Bluetooth Adapters
endef

$(eval $(call Py3Package,python3-bluetooth-adapters))
$(eval $(call BuildPackage,python3-bluetooth-adapters))
$(eval $(call BuildPackage,python3-bluetooth-adapters-src))
$(eval $(call HostBuild))
