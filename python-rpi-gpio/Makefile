include $(TOPDIR)/rules.mk

PKG_NAME:=python-rpi-gpio
PKG_VERSION:=0.7.1
PKG_RELEASE:=1

PYPI_NAME:=RPi.GPIO
PKG_HASH:=cd61c4b03c37b62bba4a5acfea9862749c33c618e0295e7e90aa4713fb373b70

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:= LICENCE.txt

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-rpi-gpio
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A module to control Raspberry Pi GPIO channels
  URL:=https://sourceforge.net/projects/raspberry-gpio-python/
  DEPENDS:=+python3
endef

define Package/python3-rpi-gpio/description
This package provides a Python module to control the GPIO on a Raspberry Pi.
endef

$(eval $(call Py3Package,python3-rpi-gpio))
$(eval $(call BuildPackage,python3-rpi-gpio))
$(eval $(call BuildPackage,python3-rpi-gpio-src))
$(eval $(call HostBuild))
