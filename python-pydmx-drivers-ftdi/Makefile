include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydmx-drivers-ftdi
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=PyDMX-Drivers-FTDI
PKG_HASH:=8e55d8e93932ad2ef92310e389fc7236c80bc685cb760acfac9f6fe9df3d8a6c

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pydmx-drivers-ftdi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Device drivers for PyDMX for FTDI-based devices. Not affiliated with FTDI.
  URL:=https://github.com/JMAlego/PyDMX
  DEPENDS:=+python3 +python3-pylibftdi +python3-pydmx
endef

define Package/python3-pydmx-drivers-ftdi/description
PyDMX is a package capable of sending DMX512 data via a driver.
PyDMX-Drivers-Arduino provides drivers for FTDI-based devices and hardware for PyDMX.
endef

$(eval $(call Py3Package,python3-pydmx-drivers-ftdi))
$(eval $(call BuildPackage,python3-pydmx-drivers-ftdi))
$(eval $(call BuildPackage,python3-pydmx-drivers-ftdi-src))
$(eval $(call HostBuild))
