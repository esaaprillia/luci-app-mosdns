include $(TOPDIR)/rules.mk

PKG_NAME:=python-pybluez
PKG_VERSION:=0.23
PKG_RELEASE:=1

PYPI_NAME:=PyBluez
PKG_HASH:=c8f04d2e78951eaa9de486b4d49381704e8943d0a6e6e58f55fcd7b8582e90de

PKG_MAINTAINER:=Esa Aprilia Salsabila <esaapriliasalsabila@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pybluez
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Bluetooth Python extension module
  URL:=https://github.com/pybluez/pybluez
  DEPENDS:=+python3 +bluez-libs
endef

define Package/python3-pybluez/description
  The PyBluez module allows Python code to access the host machine's Bluetooth resources.
endef

$(eval $(call Py3Package,python3-pybluez))
$(eval $(call BuildPackage,python3-pybluez))
$(eval $(call BuildPackage,python3-pybluez-src))
$(eval $(call HostBuild))
