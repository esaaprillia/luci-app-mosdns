include $(TOPDIR)/rules.mk

PKG_NAME:=python-wcwidth
PKG_VERSION:=0.2.13
PKG_RELEASE:=1

PYPI_NAME:=wcwidth
PKG_HASH:=72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5

PKG_MAINTAINER:=Andy Syam <privasisource@gmail.com>
PKG_LICENSE:=License
PKG_LICENSE_FILES:=LICENSE

HOST_BUILD_DEPENDS:=python-setuptools-scm/host
PKG_BUILD_DEPENDS:=python-setuptools-scm/host

include $(TOPDIR)/feeds/packages/lang/python/pypi.mk
include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/host-build.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-package.mk
include $(TOPDIR)/feeds/packages/lang/python/python3-host-build.mk

define Package/python3-wcwidth
  SUBMENU:=Python
  SECTION:=lang
  CATEGORY:=Languages
  TITLE:=Measures the displayed width of unicode strings in a terminal
  URL:=https://github.com/jquast/wcwidth
  DEPENDS:=+python3
endef

define Package/python3-wcwidth/description
This library is mainly for CLI programs that carefully produce output for Terminals, or make pretend to be an emulator.
endef

$(eval $(call Py3Package,python3-wcwidth))
$(eval $(call BuildPackage,python3-wcwidth))
$(eval $(call BuildPackage,python3-wcwidth-src))
$(eval $(call HostBuild))
