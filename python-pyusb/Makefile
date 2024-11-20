include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyusb
PKG_VERSION:=1.2.1
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=pyusb
PKG_HASH:=a4cc7404a203144754164b8b40994e2849fde1cfff06b08492f12fff9d9de7b9

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pyusb
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Python USB access module
  URL:=https://pyusb.github.io/pyusb/
  DEPENDS:=+python3 +libusb-1.0
endef

define Package/python3-pyusb/description
PyUSB offers easy USB devices communication in Python.
It should work without additional code in any environment with Python >= 3.6, ctypes and a pre-built USB backend library (currently: libusb 1.x, libusb 0.1.x or OpenUSB).
endef

$(eval $(call Py3Package,python3-pyusb))
$(eval $(call BuildPackage,python3-pyusb))
$(eval $(call BuildPackage,python3-pyusb-src))
$(eval $(call HostBuild))
