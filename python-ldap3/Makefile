#
# Copyright (C) 2015-2016, 2018-2020, 2023 Jeffery To
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-ldap3
PKG_VERSION:=2.9.1
PKG_RELEASE:=1

PYPI_NAME:=ldap3
PKG_HASH:=f3e7fc4718e3f09dda568b57100095e0ce58633bcabbed8667ce3f8fbaa4229f

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt COPYING.txt COPYING.LESSER.txt

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-ldap3
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=A strictly RFC 4510 conforming LDAP V3 pure Python client library
  URL:=https://github.com/cannatag/ldap3
  DEPENDS:=+python3 +python3-pyasn1
endef

define Package/python3-ldap3/description
ldap3 is a strictly RFC 4510 conforming LDAP V3 pure Python client library.
The same codebase runs in Python 2, Python 3, PyPy and PyPy3.
endef

$(eval $(call Py3Package,python3-ldap3))
$(eval $(call BuildPackage,python3-ldap3))
$(eval $(call BuildPackage,python3-ldap3-src))
$(eval $(call HostBuild))
