include $(TOPDIR)/rules.mk

PKG_NAME:=python-standard-telnetlib
PKG_VERSION:=3.13.0
PKG_RELEASE:=1

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=MIT
PKG_LICENSE_FILES:=LICENSE

PYPI_NAME:=standard_telnetlib
PKG_HASH:=243333696bf1659a558eb999c23add82c41ffc2f2d04a56fae13b61b536fb173

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-standard-telnetlib
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Standard library telnetlib redistribution. "dead battery".
  URL:=https://github.com/youknowone/python-deadlib
  DEPENDS:=+python3
endef

define Package/python3-standard-telnetlib/description
Python is moving forward! Python finally started to remove dead batteries. For more information, see PEP 594.
If your project depends on a module that has been removed from the standard, here is the redistribution of the dead batteries.
endef

$(eval $(call Py3Package,python3-standard-telnetlib))
$(eval $(call BuildPackage,python3-standard-telnetlib))
$(eval $(call BuildPackage,python3-standard-telnetlib-src))
$(eval $(call HostBuild))
