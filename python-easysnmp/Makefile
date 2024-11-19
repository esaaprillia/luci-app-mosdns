include $(TOPDIR)/rules.mk

PKG_NAME:=python-easysnmp
PKG_VERSION:=0.2.6
PKG_RELEASE:=1

PYPI_NAME:=easysnmp
PKG_HASH:=8326df1bc8d9cdb29e3e43d55d56cb24c0d98f6997a7a1571f32815e8bdfef15

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:= LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-easysnmp
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A blazingly fast and Pythonic SNMP library based on the official Net-SNMP bindings
  URL:=https://github.com/easysnmp/easysnmp
  DEPENDS:=+python3 +libnetsnmp
endef

define Package/python3-easysnmp/description
Easy SNMP is a fork of Net-SNMP Python Bindings that attempts to bring a more Pythonic interface to the library.
Check out the Net-SNMP website for more information about SNMP.
This module provides a full-featured SNMP client API and supports all dialects of the SNMP protocol.
endef

$(eval $(call Py3Package,python3-easysnmp))
$(eval $(call BuildPackage,python3-easysnmp))
$(eval $(call BuildPackage,python3-easysnmp-src))
$(eval $(call HostBuild))
