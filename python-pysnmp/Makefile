include $(TOPDIR)/rules.mk

PKG_NAME:=python-pysnmp
PKG_VERSION:=7.1.13
PKG_RELEASE:=1

PYPI_NAME:=pysnmp
PKG_HASH:=535b275e6703e37d5a65328ee32ece2d28c876482f83de781785b550b1f5cfe3

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-2-Clause
PKG_LICENSE_FILES:= LICENSE.rst

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-poetry-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pysnmp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A Python library for SNMP
  URL:=https://github.com/lextudio/pysnmp
  DEPENDS:=+python3 +python3-pyasn1 +python3-cryptodome
endef

define Package/python3-pysnmp/description
This is a pure-Python, open source and free implementation of v1/v2c/v3 SNMP engine distributed under 2-clause BSD license.
endef

$(eval $(call Py3Package,python3-pysnmp))
$(eval $(call BuildPackage,python3-pysnmp))
$(eval $(call BuildPackage,python3-pysnmp-src))
$(eval $(call HostBuild))
