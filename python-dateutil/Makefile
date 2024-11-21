#
# Copyright (C) 2007-2017 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-dateutil
PKG_VERSION:=2.9.0
PKG_RELEASE:=1

PKG_SOURCE:=dateutil-$(PKG_VERSION).post0.tar.gz
PKG_SOURCE_URL:=https://github.com/dateutil/dateutil/archive/$(PKG_VERSION).post0
PKG_HASH:=14920eacc5b2c4e3ae396636ae66fc7e41ec297dc00e8be70125e73710ce5796

PKG_BUILD_DIR:=$(BUILD_DIR)/pypi/python-dateutil-$(PKG_VERSION).post0

PKG_MAINTAINER:=Alexandru Ardelean <ardeleanalex@gmail.com>
PKG_LICENSE:=Apache-2.0, BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE

PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk

define Package/python3-dateutil
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Extensions to the standard Python datetime module
  URL:=https://dateutil.readthedocs.org/
  DEPENDS:=+python3 +python3-six
endef

define Package/python3-dateutil/description
  Extensions to the standard Python datetime module
endef

$(eval $(call Py3Package,python3-dateutil))
$(eval $(call BuildPackage,python3-dateutil))
$(eval $(call BuildPackage,python3-dateutil-src))
