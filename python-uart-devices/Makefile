include $(TOPDIR)/rules.mk

PKG_NAME:=python-uart-devices
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=uart_devices
PKG_HASH:=7f0342c0ba0bc2a4c13c9ead5462dc9feeaca507e5c7017ebd074a69567ad9b1

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-uart-devices
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=UART Devices for Linux
  URL:=https://github.com/bdraco/uart-devices
  DEPENDS:=+python3
endef

define Package/python3-uart-devices/description
UART Devices for Linux
endef

$(eval $(call Py3Package,python3-uart-devices))
$(eval $(call BuildPackage,python3-uart-devices))
$(eval $(call BuildPackage,python3-uart-devices-src))
$(eval $(call HostBuild))
