include $(TOPDIR)/rules.mk

PKG_NAME:=python-voluptuous-openapi
PKG_VERSION:=0.0.5
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=voluptuous_openapi
PKG_HASH:=1619cd298da0024fa01338ac5a9ce3b3b7059205ce3c69230c24803b11308fb0

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-voluptuous-openapi
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Convert voluptuous schemas to OpenAPI Schema object
  URL:=https://pypi.org/project/voluptuous
  DEPENDS:=+python3 +python3-voluptuous
endef

define Package/python3-voluptuous-openapi/description
Convert voluptuous schemas to OpenAPI Schema object
endef

$(eval $(call Py3Package,python3-voluptuous-openapi))
$(eval $(call BuildPackage,python3-voluptuous-openapi))
$(eval $(call BuildPackage,python3-voluptuous-openapi-src))
$(eval $(call HostBuild))
