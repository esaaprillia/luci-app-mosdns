include $(TOPDIR)/rules.mk

PKG_NAME:=python-bluez
PKG_VERSION:=0.23
PKG_RELEASE:=1

PKG_SOURCE:=bluez-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pybluez/pybluez/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DIR:=$(BUILD_DIR)/bluez-$(PKG_VERSION)

PKG_BUILD_DEPENDS:=python-setuptools-scm/host 2to3/host

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-bluez
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Bluetooth Python extension module
  URL:=https://github.com/pybluez/pybluez
  DEPENDS:=+python3 +bluez-libs
endef

define Package/python3-bluez/description
  The PyBluez module allows Python code to access the host machine's Bluetooth resources.
endef

$(eval $(call Py3Package,python3-bluez))
$(eval $(call BuildPackage,python3-bluez))
$(eval $(call BuildPackage,python3-bluez-src))
