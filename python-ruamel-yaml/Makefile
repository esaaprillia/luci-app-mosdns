include $(TOPDIR)/rules.mk

PKG_NAME:=python-ruamel-yaml
PKG_VERSION:=0.18.6
PKG_RELEASE:=1

PYPI_NAME:=ruamel.yaml
PKG_HASH:=8b27e6a217e786c6fbe5634d8f3f11bc63e0f80f6a5890f28863d9c45aac311b

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-ruamel-yaml
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=ruamel.yaml is a YAML parser/emitter that supports roundtrip preservation of comments, seq/map flow style, and map key order
  URL:=https://sourceforge.net/projects/ruamel-yaml/
  DEPENDS:=+python3 +python3-ruamel-yaml-clib
endef

define Package/python3-ruamel-yaml/description
ruamel.yaml is a YAML 1.2 loader/dumper package for Python.
endef

$(eval $(call Py3Package,python3-ruamel-yaml))
$(eval $(call BuildPackage,python3-ruamel-yaml))
$(eval $(call BuildPackage,python3-ruamel-yaml-src))
$(eval $(call HostBuild))
