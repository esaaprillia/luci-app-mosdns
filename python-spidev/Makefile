include $(TOPDIR)/rules.mk

PKG_NAME:=python-spidev
PKG_VERSION:=3.6
PKG_RELEASE:=1

PYPI_NAME:=spidev
PKG_HASH:=14dbc37594a4aaef85403ab617985d3c3ef464d62bc9b769ef552db53701115b

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-spidev
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python bindings for Linux SPI access through spidev
  URL:=https://github.com/doceme/py-spidev
  DEPENDS:=+python3
endef

define Package/python3-spidev/description
This project contains a python module for interfacing with SPI devices from user space via the spidev linux kernel driver.
endef

$(eval $(call Py3Package,python3-spidev))
$(eval $(call BuildPackage,python3-spidev))
$(eval $(call BuildPackage,python3-spidev-src))
$(eval $(call HostBuild))
