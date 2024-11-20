include $(TOPDIR)/rules.mk

PKG_NAME:=python-pydmx
PKG_VERSION:=0.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=PyDMX
PKG_HASH:=e8f2798fd033475a7e322f77799ddb75ffd65c473a833911a7a0d2f6cf3b48d1

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pydmx
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python module for sending DMX512 data.
  URL:=https://github.com/JMAlego/PyDMX
  DEPENDS:=+python3
endef

define Package/python3-pydmx/description
PyDMX is a package capable of sending DMX512 data via a driver.
It was created to allow demonstrations on open days of DMX-based projects created at the University of York Department of Computer Science (UoY CS).
The project consists of a core package and a series of optional driver packages for particular hardware and devices.
endef

$(eval $(call Py3Package,python3-pydmx))
$(eval $(call BuildPackage,python3-pydmx))
$(eval $(call BuildPackage,python3-pydmx-src))
$(eval $(call HostBuild))
