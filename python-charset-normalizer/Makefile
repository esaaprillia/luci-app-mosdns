#
# Copyright (C) 2023 Jeffery To
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=python-charset-normalizer
PKG_VERSION:=3.3.2
PKG_RELEASE:=1

PYPI_NAME:=charset-normalizer
PKG_HASH:=f30c3cb33b24454a82faecaf01b19c18562b1e89558fb6c56de4d9118a032fd5

PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Jeffery To <jeffery.to@gmail.com>

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-charset-normalizer
  SECTION:=lang
  CATEGORY:=Languages
  SUBMENU:=Python
  TITLE:=Real First Universal Charset Detector
  URL:=https://github.com/Ousret/charset_normalizer
  DEPENDS:=+python3-light +python3-codecs +python3-logging
endef

define Package/python3-charset-normalizer/description
A library that helps you read text from an unknown charset encoding.
Motivated by chardet, I'm trying to resolve the issue by taking a new
approach. All IANA character set names for which the Python core library
provides codecs are supported.
endef

$(eval $(call Py3Package,python3-charset-normalizer))
$(eval $(call BuildPackage,python3-charset-normalizer))
$(eval $(call BuildPackage,python3-charset-normalizer-src))
$(eval $(call HostBuild))
