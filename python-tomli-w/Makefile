include $(TOPDIR)/rules.mk

PKG_NAME:=python-tomli-w
PKG_VERSION:=1.1.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=tomli_w
PKG_HASH:=49e847a3a304d516a169a601184932ef0f6b61623fe680f836a2aa7128ed0d33

HOST_BUILD_DEPENDS:=python-setuptools-scm/host python-flit-core/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host python-flit-core/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-tomli-w
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=A lil' TOML writer
  URL:=https://github.com/hukkin/tomli-w
  DEPENDS:=+python3
endef

define Package/python3-tomli-w/description
Tomli-W is a Python library for writing TOML. It is a write-only counterpart to Tomli, which is a read-only TOML parser. Tomli-W is fully compatible with TOML v1.0.0.
endef

$(eval $(call Py3Package,python3-tomli-w))
$(eval $(call BuildPackage,python3-tomli-w))
$(eval $(call BuildPackage,python3-tomli-w-src))
$(eval $(call HostBuild))
