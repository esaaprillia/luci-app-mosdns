include $(TOPDIR)/rules.mk

PKG_NAME:=python-voluptuous-serialize
PKG_VERSION:=2.6.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=Apache-2.0
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=voluptuous-serialize
PKG_HASH:=79acdc58239582a393144402d827fa8efd6df0f5350cdc606d9242f6f9bca7c4

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-voluptuous-serialize
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Convert voluptuous schemas to dictionaries
  URL:=https://pypi.org/project/voluptuous
  DEPENDS:=+python3 +python3-voluptuous
endef

define Package/python3-voluptuous-serialize/description
Convert Voluptuous schemas to dictionaries so they can be serialized.
endef

$(eval $(call Py3Package,python3-voluptuous-serialize))
$(eval $(call BuildPackage,python3-voluptuous-serialize))
$(eval $(call BuildPackage,python3-voluptuous-serialize-src))
$(eval $(call HostBuild))
