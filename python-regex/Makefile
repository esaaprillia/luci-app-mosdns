include $(TOPDIR)/rules.mk

PKG_NAME:=python-regex
PKG_VERSION:=2024.11.6
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE.txt

PYPI_NAME:=regex
PKG_HASH:=7ab159b063c52a0333c884e4679f8d7a85112ee3078fe3d9004b2dd875585519

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-regex
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Alternative regular expression module, to replace re.
  URL:=https://github.com/mrabarnett/mrab-regex
  DEPENDS:=+python3
endef

define Package/python3-regex/description
This regex implementation is backwards-compatible with the standard ‘re’ module, but offers additional functionality.
endef

$(eval $(call Py3Package,python3-regex))
$(eval $(call BuildPackage,python3-regex))
$(eval $(call BuildPackage,python3-regex-src))
$(eval $(call HostBuild))
