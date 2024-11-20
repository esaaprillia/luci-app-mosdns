include $(TOPDIR)/rules.mk

PKG_NAME:=python-pylibftdi
PKG_VERSION:=0.23.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=pylibftdi
PKG_HASH:=bf5b4c6ba73d79a6f6df849c345b00ba763d023201bed9ba51d876a4397b16d8

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pylibftdi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Pythonic interface to FTDI devices using libftdi.
  URL:=https://github.com/codedstructure/pylibftdi
  DEPENDS:=+python3 +libftdi
endef

define Package/python3-pylibftdi/description
pylibftdi is a minimal Pythonic interface to FTDI devices using libftdi.
endef

$(eval $(call Py3Package,python3-pylibftdi))
$(eval $(call BuildPackage,python3-pylibftdi))
$(eval $(call BuildPackage,python3-pylibftdi-src))
$(eval $(call HostBuild))
