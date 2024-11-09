include $(TOPDIR)/rules.mk

PKG_NAME:=pybluez
PKG_VERSION:=0.23
PKG_RELEASE:=1

PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION).tar.gz
PKG_SOURCE_URL:=https://github.com/pybluez/pybluez/archive/$(PKG_VERSION)
PKG_HASH:=skip

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=GPL-2.0
PKG_LICENSE_FILES:=COPYING

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/pybluez
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Bluetooth Python extension module
  URL:=https://github.com/pybluez/pybluez
  DEPENDS:=+python3 +bluez-libs
endef

define Package/pybluez/description
  The PyBluez module allows Python code to access the host machine's Bluetooth resources.
endef

$(eval $(call Py3Package,pybluez))
$(eval $(call BuildPackage,pybluez))
$(eval $(call BuildPackage,pybluez-src))
