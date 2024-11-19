include $(TOPDIR)/rules.mk

PKG_NAME:=python-pyperclip
PKG_VERSION:=1.9.0
PKG_RELEASE:=1

PYPI_NAME:=pyperclip
PKG_HASH:=b7de0142ddc81bfc5c7507eea19da920b92252b548b96186caf94a5e2527d310

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=BSD-3-Clause
PKG_LICENSE_FILES:=LICENSE.txt

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-pyperclip
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A cross-platform clipboard module for Python. (Only handles plain text for now.)
  URL:=https://github.com/asweigart/pyperclip
  DEPENDS:=+python3
endef

define Package/python3-pyperclip/description
Pyperclip is a cross-platform Python module for copy and paste clipboard functions. It works with Python 2 and 3.
endef

$(eval $(call Py3Package,python3-pyperclip))
$(eval $(call BuildPackage,python3-pyperclip))
$(eval $(call BuildPackage,python3-pyperclip-src))
$(eval $(call HostBuild))
