include $(TOPDIR)/rules.mk

PKG_NAME:=python-ruamel-yaml-clib
PKG_VERSION:=0.2.12
PKG_RELEASE:=1

PYPI_NAME:=ruamel.yaml.clib
PKG_HASH:=6c8fbb13ec503f99a91901ab46e0b07ae7941cd527393187039aec586fdfd36f

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

define Package/python3-ruamel-yaml-clib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=C version of reader, parser and emitter for ruamel.yaml derived from libyaml
  URL:=https://sourceforge.net/projects/ruamel-yaml-clib/
  DEPENDS:=+python3
endef

define Package/python3-ruamel-yaml-clib/description
This package was split of from ruamel.yaml, so that ruamel.yaml can be build as a universal wheel.
Apart from the C code seldom changing, and taking a long time to compile for all platforms,
this allows installation of the .so on Linux systems under /usr/lib64/pythonX.Y (without a .pth file or a ruamel directory) and the Python code for ruamel.yaml under /usr/lib/pythonX.Y.
endef

$(eval $(call Py3Package,python3-ruamel-yaml-clib))
$(eval $(call BuildPackage,python3-ruamel-yaml-clib))
$(eval $(call BuildPackage,python3-ruamel-yaml-clib-src))
$(eval $(call HostBuild))
